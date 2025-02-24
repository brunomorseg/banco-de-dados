PGDMP  %    !                |            controle_acao_social    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32768    controle_acao_social    DATABASE     �   CREATE DATABASE controle_acao_social WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 $   DROP DATABASE controle_acao_social;
                postgres    false            �            1259    32785    controle    TABLE     �   CREATE TABLE public.controle (
    id integer NOT NULL,
    data date,
    nome_recebedor character varying(255),
    membro_da_igreja boolean,
    igreja_que_congrega character varying(255),
    celula character varying(255)
);
    DROP TABLE public.controle;
       public         heap    postgres    false            �            1259    32784    controle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.controle_id_seq;
       public          postgres    false    216            �           0    0    controle_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.controle_id_seq OWNED BY public.controle.id;
          public          postgres    false    215                       2604    32788    controle id    DEFAULT     j   ALTER TABLE ONLY public.controle ALTER COLUMN id SET DEFAULT nextval('public.controle_id_seq'::regclass);
 :   ALTER TABLE public.controle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    32785    controle 
   TABLE DATA           k   COPY public.controle (id, data, nome_recebedor, membro_da_igreja, igreja_que_congrega, celula) FROM stdin;
    public          postgres    false    216   I       �           0    0    controle_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.controle_id_seq', 2, true);
          public          postgres    false    215                       2606    32792    controle controle_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.controle
    ADD CONSTRAINT controle_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.controle DROP CONSTRAINT controle_pkey;
       public            postgres    false    216            �   �  x�uVMs�H=K�b���
I`Ñ/cS�&�r�e,&0�a�IT���!���)���ג���[EU0=������;A'�۝^�s�U$wRs�lm��F��E�Z��M��s��,Ͼs����~��9#�u����ܧ�ٙ���N��ZZ�ͳ4OxL�|���.�wʷ��*��a+��'0�;i%?R�Л�4���&��q6'��MXk����� N���S��^U�C�['���p�w��p7:OD�E��t���J����tM��t�~Ǚp-�b�����qM$v���F�B���+��e���;(��ƹ��޽7��޴��o���p����E��({�e�c�V� �(̙�k���Jj�5�M�`��²{� �Ȼ�Vް�����v83�h�	�(���G^�:(��u�����'��rt�Y*��v����5W_R@hݾ�G�4OOҜ�	CX'�;s=[�� c�ZCg�`Kp�j�p�nzEu��V�t�r����u���h�v�wL���Rt�ҤX�^��r>rˣ�M�������\�'�e�6���I#�e"I�<N�%mEٷ�򮵈���=D��b�h	��-{po�gζP�3�~��n����r��&T?����EF'H��sN�>[�Odl,=�4�feb�H��?��O�2(S�-�LD�O����2���U�>f�!��fZ#賖e���m$��'QV�Ϧ2�;�̆p����A�4}�%O,��7-�����"��t� lJy)v��-	�m�6�a�)ɅBl|���R��U����F:݊��3u�˯T�%%w'�8/�oj��^)pVbO�E	�&�Y�7V�@E	r]�1t�Z�赕Lr.�0��LѪ���o^5k-d�H�Ip�4`��ܠߌ_�#P�P��uk��5Bqck,T\ݰ�c9]m=7�J �Kg���=zl�NE��	E�KEذ�n�H�K�О��<��~�����ha�E���JP�����>�R�U��w�qeX�)!z:�/�utH�)$<ܯ����f&�2&�;�h�]�Z�Q�|�m������Hq��.{�iEkM�&G�)��|�
���鯛i�������n����"�Ŭu�ܩx���ߤK���y*�Rc��x[��e�{�c]7_8�����qDS�M�3���k�mk���;�C�S+�J-��li,Zyy��v������������H��7w�%-=�)�nC`���C�N��JpU4A�%�[�lt��ԣ����7TGA��1�N���rG�/���%��$������U���97���r��	�kI��r
�`�S�Q��ď��&{=�pn�c�ͨ��WPL5#�s�8(�2��5o�*l��9�1�䂫�4�j!���ʍ���Mq�!�����_V��/{�Qhx���]��u>z�����u*     