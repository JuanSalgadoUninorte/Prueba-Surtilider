from flask import Flask, render_template, request, redirect, url_for, flash
import psycopg2 
import psycopg2.extras
 
app = Flask(__name__)
app.secret_key = "mysecret"
 
DB_HOST = "localhost"
DB_NAME = "surtilider"
DB_USER = "postgres"
DB_PORT = "5432"
DB_PASS = "123456"
conn = psycopg2.connect(host=DB_HOST, database=DB_NAME, user=DB_USER, port=DB_PORT, password=DB_PASS)
 
@app.route('/')
def Index():
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    query = "SELECT * FROM tercero"
    cur.execute(query)
    list_users = cur.fetchall()
    return render_template('index.html', list_users = list_users)

@app.route('/add_person', methods=['POST'])
def add_person():
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    if request.method == 'POST':
        fname = request.form['nombre-f1']
        lname= request.form['apellido-f1']
        tipod= request.form['tipo_documento']
        iden = request.form['id-f1']
        ter = request.form['tercero']
        tel = request.form['telefono-f1']
        est = request.form['estado-f1']
        dir = request.form['direccion-f1']
        email= request.form['email-f1']
        
        cur.execute("INSERT INTO tercero (num_identificacion, nombre, apellido, correo, telefono, direccion, estado, tipo_tercero, typo_documento) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)", (iden, fname, lname, email, tel, dir, est, ter, tipod))
        conn.commit()
        flash('Tercero agregado correctamente')
        return redirect(url_for('Index'))

@app.route('/facility/<id>' , methods=['GET', 'POST'])
def facility(id):
    return render_template('addFacility.html', id = id)

@app.route('/add_facility', methods=['POST'])
def add_facility():
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    if request.method == 'POST':
        idt = request.form['idt']
        fname = request.form['r_social-f2']
        tel = request.form['telefono-f2']
        est = request.form['tercero']
        dire = request.form['direcccion-f2']
        print(idt,fname,tel,est)
        cur.execute("INSERT INTO sede_tercero (id_tercero, nombre_sede, telefono, estado, direccion) VALUES (%s,%s,%s,%s,%s)", (idt, fname, tel, est, dire))
        conn.commit()
        flash('Sede agregada correctamente')
        return redirect(url_for('Index'))
 
@app.route('/edit/<id>', methods = ['POST', 'GET'])
def get_employee(id):
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
   
    cur.execute('SELECT * FROM tercero WHERE id = %s', (id))
    data = cur.fetchall()
    cur.close()
    print(data[0])
    return render_template('edit.html', student = data[0])

@app.route('/list/<id>', methods = ['POST', 'GET'])
def get_list(id):
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    cur.execute('SELECT * FROM sede_tercero WHERE id_tercero = %s', (id))
    sede = cur.fetchall()
    return render_template('list.html', sede = sede)
 
@app.route('/update/<id>', methods=['POST'])
def update_student(id):
    if request.method == 'POST':
        estado = request.form['estado-f1']
         
        cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
        cur.execute("""
            UPDATE tercero
            SET estado = %s
            WHERE id = %s
        """, (estado, id))
        flash('Tercero actualizado correctamente')
        conn.commit()
        return redirect(url_for('Index'))
 
def pagina_no_encontrada(error):
    #return render_template('404.html'), 404
    return redirect(url_for('hello_world'))

if __name__ == '__main__':
    app.run(debug=True)