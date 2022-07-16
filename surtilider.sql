PGDMP     %                    z         
   surtilider    14.3    14.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    114825 
   surtilider    DATABASE     i   CREATE DATABASE surtilider WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE surtilider;
                postgres    false            �            1259    114871    sede_tercero    TABLE     �   CREATE TABLE public.sede_tercero (
    id integer NOT NULL,
    id_tercero character(20),
    nombre_sede character(30),
    telefono character(20),
    direccion character(50),
    estado character(20)
);
     DROP TABLE public.sede_tercero;
       public         heap    postgres    false            �            1259    114870    sede_tercero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sede_tercero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sede_tercero_id_seq;
       public          postgres    false    212            �           0    0    sede_tercero_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sede_tercero_id_seq OWNED BY public.sede_tercero.id;
          public          postgres    false    211            �            1259    114827    tercero    TABLE     E  CREATE TABLE public.tercero (
    id integer NOT NULL,
    nombre character(50),
    apellido character(50),
    typo_documento character(30),
    num_identificacion character(15),
    telefono character(15),
    correo character(50),
    direccion character(100),
    estado character(20),
    tipo_tercero character(10)
);
    DROP TABLE public.tercero;
       public         heap    postgres    false            �            1259    114826    tercero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tercero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tercero_id_seq;
       public          postgres    false    210            �           0    0    tercero_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tercero_id_seq OWNED BY public.tercero.id;
          public          postgres    false    209            b           2604    114874    sede_tercero id    DEFAULT     r   ALTER TABLE ONLY public.sede_tercero ALTER COLUMN id SET DEFAULT nextval('public.sede_tercero_id_seq'::regclass);
 >   ALTER TABLE public.sede_tercero ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            a           2604    114830 
   tercero id    DEFAULT     h   ALTER TABLE ONLY public.tercero ALTER COLUMN id SET DEFAULT nextval('public.tercero_id_seq'::regclass);
 9   ALTER TABLE public.tercero ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    114871    sede_tercero 
   TABLE DATA           `   COPY public.sede_tercero (id, id_tercero, nombre_sede, telefono, direccion, estado) FROM stdin;
    public          postgres    false    212   �       �          0    114827    tercero 
   TABLE DATA           �   COPY public.tercero (id, nombre, apellido, typo_documento, num_identificacion, telefono, correo, direccion, estado, tipo_tercero) FROM stdin;
    public          postgres    false    210   �       �           0    0    sede_tercero_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sede_tercero_id_seq', 6, true);
          public          postgres    false    211            �           0    0    tercero_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tercero_id_seq', 102, true);
          public          postgres    false    209            f           2606    114876    sede_tercero sede_tercero_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sede_tercero
    ADD CONSTRAINT sede_tercero_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.sede_tercero DROP CONSTRAINT sede_tercero_pkey;
       public            postgres    false    212            d           2606    114832    tercero tercero_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tercero
    ADD CONSTRAINT tercero_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tercero DROP CONSTRAINT tercero_pkey;
       public            postgres    false    210            �      x������ � �      �      x��]�rܶ�^#O��ٹ������Hq,Ge��Sw�!!��L@rƣ��p���m�pd�q�)1a�R��G����5����}����y�w��#WWg����1M0�����H��U׾i՛�͙%��o��������I�.�K+��ھP!z?���_^e�ݟ"t_ʺk�V�Yw���zĢ�hv��i�Ix��"Y�w���F��dg>7b<���ܩ~P��d���].t�'�������m���궮��zw�����c3A���4"���n]���j]���%Yp?j���U��Zy}\����{Q�6W�����A����"�}��Ԯʞ������=�yBCq�����c���{��⯗��FVE9w�|�n�����z?�aԲ�/��Q�o�.e�+W�=>bQ�����l�^�:���F�]qV��%0���N�U[���g���^׊���!���Z?�G_�6;X��#t����}�	�Xp�����H�����Ϡ�����}Vv]\��A�>���{7��Gp̕��݌��e]{<bS0~yډH��r)�\�[_�9��X,n��ೖ���u��Lн҅�k���=2;>b�/yy�BB(���D�Ҿ��=���c��4n�JW��^7������������+F��[���3L_�'�q8���Y��ۼ��<\�t#��S's���z��3��E[��+~A�d_�"�E�/	IDH$������y���VI=Tr�g�2jx�O�_�z�8B�F�{sDW]�h��K��(���$<y8�E�Tf�[����[٨�T1�"�y��n9�u�o���Vc�o��`������� ���I�P��{z|��>@����y���$��=}������s ����� ����Z���!Q
£���Z�E�w��� �zӞM*��7���ߝ��ހ9���
�`�Uߎ��r���F1�K
�"LI��d�H��2mT^����1�a��` � ]ɦ�d�7�/���K�D�Y��&
�JU��_2C\\�b!ڥ�ꇱ��a���]w��^ ]�����+��/	������G�F�<�|LAO ��,�8<"~�노�$���]��`�a�����ι��;cp<�QDi8}�+#r�>VM��T{|wR��*W���=���N�A�r'���W�=DK��Ȍ�1���f�+�Id�f�y#�7��"1�|�m�_P����K%}TeV��'k�g5��K�(�q��I���(�����y��^�n�K����=B#������)������b�9�Ä�1!�Adk#�M7�U�~g�N2I���׍V�ጎw������������&3����#6�q8�QJ���4�]ڮ��c�P�:_H�.���̪8�s�]��_��n�3��F06��ʈܤ����k�I�$
~�6���~����~�C��WE3�>1�Tj[��'�Q8Q�y�i�_D�����4�37���ke#! ��~�+�}�08Ǐo�߲7�(��w�l���AXMI��|���XJG������U���s@`��e#��. ��V�߶�U�3���B�%�S��<��S��{�@Ip/�rxT�b lG`�B���]�\��VlA0��8Q&�'�mO"ǭNăϥ�����<��$S��A���
<s�e��/����GI��䴏\��cZ�����:Hd �~���p�_�>�<�d��+�+/�<���$�A��}�n�"�i�Y���@�L���ֲ��6��׾��Rt�Z�B���u���đ8d �ax*��D�<B��[q���l�����o�^(����@s���1;�~�7B�Ht #��Q�H��_Ӿr+��"���}pS���\
� ��9Az[Ax9�=aU����s�b�i�Wy�$�Ӧ{�Y��L��u5��B ���bd�=���Fݫ�_o#��H\B�iӉĵ�g�O�l��Ö}����b���;����z;6kO^b3��84������F$�]�蚅���lV����4���J�ʯL]�=A�n�3�P1(<%*���qڮ2�I�+�Qp�6��_�._� �A��(�(����Eߌ��`1���8~NTJ#�T�����J��:��N��b�Z��C�e�`�7y�O��^�m���8J��(|�e�G�����VҞ�D�g�c9����_���02��_�>�z]f3�8:���e��Y���횪w���we|1U�ˤ)]�t1��_�>�^����g<.�<dSp����8�(��Ԫ�Yi�ƙlġ[�i �?��"\�A�}�|������a"ؼ�R���L<�ޣH�c5fv����^�C�=<,��rbKD0��L-��'S�n�~�k��wF��)�"��rʬ1"q��
�F���9_Mi�{���J���s��/]�ཪ�~�V7cq	�8��M���<��<U�JC6M��3{��^?���bt+u~٧����z��V��8�;��5z�EZ����f�Y �-װe7��v]�G��A��W��U�s�\�<뷟Db�����ժ�H
Я엊B���&��zF����`6#q,�B�DS���"�*���s��(�,����r��. !��n,j��a�m�~Y�*P��g$��8���zB��vG�8K3�����gB4��A���Ο��rhH�嘭=�2�W~��vG�D��=���#��y*W�8�i�w�7;�B,��&!?F��]U g{�/6,�0�N�׵ԍO���cD�J�"�� X8H�*ͫ�p��D�n�̻�D2��0AW��w��ɡK�<���'�Jm��I��7L?�h��Y$~H�3'��Z�n�+�v�Y�iP�RQ�5�Qt��a�rr&q��ʧc�����D��_r�[e�H\8��"������C��j���\i����ļ�2"�
�O#7��I$.SP�@0��^r��]��w�x����7���B�N������~�.67=��A<��U���U�]�c���{��������j��G&um�|�Gl���S��'hx��t�$?�2�Má�b`�ms1�����I>HU�t͢w9ؒO�����Li��Z2>�2I��S=��i q|�¤�Z:7C�ί'0ŷ��f�3�YB	�8-h�H\�UV�f^u �89��X���n�ݩM�sD�8�ίBЦ��KXH���
�"q��,w
�R�H P�\5{�W�����X���.��򪐱!D<��8�S3"j�Hܦ���ۡ���)0���m/�ަ�
���l�s�e/�AW���Q�͂��3��F8�b�l�M$�ҬD���\=����3ɾ��Ƹ(�����=�w�o��U�3G�ő����~s�7�^�g���4�`�Jˎ.u���9@E�z�l�
��	���X!�O��XLN%��I$��5����*�rk�wP0Cו����D�Ej�7Ϊ���<����;w�X�Y��+�����v[xӖڪw����m�R%��
7�(d�g�ʈ��	5�����6�$�i?����Eu�Q\�R+C i.r�`������ގ�����b���QQV̞S�M~���Uî�� �*�~�pGH�����:�]��2����+�=݅U�3"��8�b�2i��L��n�C/�����>W����.̼�W�7r���w�7�vU�F�Øe��`+Ϙ\UƘO���1�&o�Rv�P�tU3��wv+�2�X��]�xFi��Rڧ����JaF�pʁ��(��L���
�k�eȦ"�*�����5Z8	ѽq~�^�l��m_;#r'	5�����W��kZh���<O�����k-��ܭk�p�ч��{?�u	|g*���)xF�p�	�Q4킢z5�����J��Dyb��:�Zx[�N�%��ޫ��\`xP֫�#AdC�d��DqFEHO���H���Y`\=T�l����hV������a�Ah�Tg�������ot՗»[�U�3 6  �b&8�ɔ�� �$��nO(n�F޴�:��,N��ӕ���_7|�����<\2cqqlJ�x8��@EWN	N��at�T�ު:���op��#t}�/��U��,n��c��Q=h/2#����W�mEQ��r��Σ����e���1���
���c�o�$��?�$4ݩ�Nd�.B!��ƒqqv�H�%��z)]���U�gG��#<�3|
њ� ������4JX\v;3#x!g�/e�V�#��*��8�~��"Fç���H�y�g&9fͤ!��1Yn|�@��F������k�h��&��ql@�x_�N"I��qW�	�<
.ͬ��4�-T�cW0���s�^`NM�z����J�P01q���&�$�9���j�̐��B��*[���Cp�n�w�H\~h�q�v
Ɍ�QA.�����I$�$X�l�1��be�
&���s�,��$_�"��K*!|�gb�!��IDZJ���жE`�G���\���"�!��9%���
H�+�e���,&`x
.��O"�t^`�!#��]p%��^�(�Dp�>T}����R���i+�����sS�:��Gu?�$�t(UQw+���FVŘ��@Q~��c���9��{�F�_�{&�=d�{�����;cq����S\��I��o���ۋK�x� �3�2�J�~c��T]��tY�k�ý�$��h|>݄�����v�bI�P]V`�ᣔ��~�����]�{�z����8����!��0?e���0�V��E�fu7�����K&	n�lO�*�/G��kH���H�[E�.��w>�$Lhq~�W4��!5s׵}tJ�������@7�g��ᔁ��/٢�yE%f��s�tqT�G��H�Nm�
i��"���,T�c?�/D�䞧��R�k �]�b^P�07��]#��)ӯU[��u�9���r'Z�3��E{����U���U7�Ō�E��Eϵ<2� [R���	�OX�b��B��K�G�V<Ð�T��-bFจ0��tN\�:�$�����|}�ơ$6I�������!���f��kY���_��E�3��(� �O}���(���l��]&m[q(������C ��!��{�?T^m�@�\�S����=��'��F�a��Ӄ4=[�h؞�������:D'p�p�CL��0;E�����qpmlN�>dا����"F7Ro|*��ӄ��j�H0E��)#��i'�,���o�,6��A�	��M�}���N�E��c�`	O�ipA�2"I��![3�%��F��E���C��}p�����fU���Pm�c��'�G�d��}����n�q��Bȝ�Ke�'̩8��
$�zz�!�bF� Hc�:%�к9�$���]]TY�ݭ7���JoM���I�Q�!����s��m7ֽ�y����<1cR�Oӏ��H��J;��Gf�� �\h����1��T�?��Cd-u�UAa;p6����9:E���Ă��?�Ĝ��8�\��v��뇥������7_YO���_��Ħ��+����4s<���K,rYQ�����O��8��     