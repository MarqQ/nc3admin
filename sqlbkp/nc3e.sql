PGDMP             	    
        x            nc3e    10.13    12.2 3               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    nc3e    DATABASE     �   CREATE DATABASE nc3e WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE nc3e;
                postgres    false            �          0    16425 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    203   +       �          0    16435    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    205   9+       �          0    16417    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    201   V+       �          0    16443 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    207   i.       �          0    16453    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   �/       �          0    16461    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    211   �/       �          0    16554    core_cliente 
   TABLE DATA           *   COPY public.core_cliente (id) FROM stdin;
    public          postgres    false    215   0       �          0    16562    core_clienteemail 
   TABLE DATA           /   COPY public.core_clienteemail (id) FROM stdin;
    public          postgres    false    217   (0       �          0    16570    core_clientetelefone 
   TABLE DATA           2   COPY public.core_clientetelefone (id) FROM stdin;
    public          postgres    false    219   E0       �          0    16578    core_fornecedor 
   TABLE DATA           -   COPY public.core_fornecedor (id) FROM stdin;
    public          postgres    false    221   b0       �          0    16586    core_fornecedoremail 
   TABLE DATA           2   COPY public.core_fornecedoremail (id) FROM stdin;
    public          postgres    false    223   0       �          0    16594    core_fornecedortelefone 
   TABLE DATA           5   COPY public.core_fornecedortelefone (id) FROM stdin;
    public          postgres    false    225   �0       �          0    16602    core_funcao 
   TABLE DATA           )   COPY public.core_funcao (id) FROM stdin;
    public          postgres    false    227   �0                  0    16610 	   core_obra 
   TABLE DATA           '   COPY public.core_obra (id) FROM stdin;
    public          postgres    false    229   �0                 0    16618    core_obrafornecedor 
   TABLE DATA           1   COPY public.core_obrafornecedor (id) FROM stdin;
    public          postgres    false    231   �0                 0    16626    core_obramensagem 
   TABLE DATA           /   COPY public.core_obramensagem (id) FROM stdin;
    public          postgres    false    233   1                 0    16634    core_obratarefa 
   TABLE DATA           -   COPY public.core_obratarefa (id) FROM stdin;
    public          postgres    false    235   -1                 0    16642    core_perfil 
   TABLE DATA           )   COPY public.core_perfil (id) FROM stdin;
    public          postgres    false    237   J1       
          0    16650 	   core_ramo 
   TABLE DATA           '   COPY public.core_ramo (id) FROM stdin;
    public          postgres    false    239   g1                 0    16658    core_usuario 
   TABLE DATA           n   COPY public.core_usuario (id, nome, email, cpf, cnpj, telefone, cep, cidade, logradouro_completo) FROM stdin;
    public          postgres    false    241   �1       �          0    16521    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   �1       �          0    16407    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    199   �1       �          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    197   �2                 0    16664    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    242   .4       +           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    202            ,           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    204            -           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
          public          postgres    false    200            .           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    208            /           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    206            0           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    210            1           0    0    core_cliente_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_cliente_id_seq', 1, false);
          public          postgres    false    214            2           0    0    core_clienteemail_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.core_clienteemail_id_seq', 1, false);
          public          postgres    false    216            3           0    0    core_clientetelefone_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.core_clientetelefone_id_seq', 1, false);
          public          postgres    false    218            4           0    0    core_fornecedor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.core_fornecedor_id_seq', 1, false);
          public          postgres    false    220            5           0    0    core_fornecedoremail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.core_fornecedoremail_id_seq', 1, false);
          public          postgres    false    222            6           0    0    core_fornecedortelefone_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.core_fornecedortelefone_id_seq', 1, false);
          public          postgres    false    224            7           0    0    core_funcao_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.core_funcao_id_seq', 1, false);
          public          postgres    false    226            8           0    0    core_obra_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.core_obra_id_seq', 1, false);
          public          postgres    false    228            9           0    0    core_obrafornecedor_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.core_obrafornecedor_id_seq', 1, false);
          public          postgres    false    230            :           0    0    core_obramensagem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.core_obramensagem_id_seq', 1, false);
          public          postgres    false    232            ;           0    0    core_obratarefa_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.core_obratarefa_id_seq', 1, false);
          public          postgres    false    234            <           0    0    core_perfil_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.core_perfil_id_seq', 1, false);
          public          postgres    false    236            =           0    0    core_ramo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.core_ramo_id_seq', 1, false);
          public          postgres    false    238            >           0    0    core_usuario_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.core_usuario_id_seq', 1, false);
          public          postgres    false    240            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    212            @           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
          public          postgres    false    198            A           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    196            �      x������ � �      �      x������ � �      �     x�u�ݎ�0F����T1���k�T��I#%���վ}�3�|c�;l����3?���_.��x;��5}g��e����O?ܼ�hJ�2���/Ҕ�U ���?������O��<���AM&l�r
d;`[�S,ۉ�"�#p�dy����)�`���rq��q��a��^.��{�����zi]���*oO@��3����޼���6�|������Oo�`�S�u�d0)��^�~�G��蠫X��gOO�	�<��z߅aτ��]0�K����ț~~�OoZ��4��zɅ�w.b��,ް���-ݧ��r�������+L��#�p��n�3Uh[�(6ʉGq�ˍ�k���8xs� q֖�^(�1���Ku:��5�<P���F��:N�?��8����[�^�(�@Zu��Y�
�L�AI�c��̹̙[U�K�F���R�I�^)�BqQ��,==Wd����o�a�&���ߤ��MP)�v�bqWJ�kp}�~4���hdk�$faJu�PQ�)�taȌ	�����Gx뵭U�e� Bul$؁�͸���V����N"�u�+e5`�e��3+e(k�Z>+J9���DO?���?�kR�8g�b�y�"%�&	�@)��X�2^��~��幵ɟfl�l����s��;�]f-pr��t�r���_�.l��mUG	"G�@��J����&c!��ե��Or���꨸�D���;����*����tMq�3l�V�@�(˜��҉���(>����Z�p�p�      �   X  x�m��n�@�3<�nFܝ���Im�X���Ti�4� 
���Eۤ�:��?��ˏ����#x/c�"a�#�O{���+UN?��Q�m�`-+s5����3��|��	;�m�{# �BJ��t��dME��:*!��*,�g��H(y&�E}�~���3��)��
��׹̏ihNh�qi�V�E�7rh��3^�ff��a<S�����1jy���\��Șb�ؑ	�<;#
���Mt��X�A�0���:Z�~��a�Rm)-b�`m��.��`�	�������Z
�qyod�0��l�����e�U�7�ܮ�
/���3�����ׅ#~��7Y�/J��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      
      x������ � �            x������ � �      �      x������ � �      �   �   x�]��� E�܏q��V��ִ2SH'��/J�>v�CnH�ʼ��j�|��2)��D�l�=.��iB] 4�cs,��-����@��T7�\D�퐜�#�;i��=A���Y<u�b��GU:����.��*��0t]��b����\W��3��nW�P���2�����9Ĩ��SHF,�q���}~      �   �  x���[n�0�g���@"�/]�HGV�RK��T��k[�D*�9?�1���)�)��lc���&��:�:#~&�o��QqJINΈ�Hg��q<!��H�	ڙ����#u�=F��A������|�v�7��E��>�<暜��}0=\?����ߕ�d��?�"[�u�
Lf������B��3$`�at1�HeF����|�>�5��j]�%���4�E�Ma�J��8~N/��I�.F����`b*ջ�f˰���Тn�M������;��^ zC_�\�|���L�!�ݷ!� ������9�8�8���k��Z�*�&���bl�7
���_��1�iM+#�a�sE���O_�~Ѻ���'#أ�-/X�-��]��1����I/�����O         �  x���I��0 E�p�� ���jѪ�(Q٨P�����H���j�R�k����h\G]�5���c�u����z܏v�oxB�"!��� ����BS��ل+�U�I�b �^�[M-5\]�H�H���-O��x�����d�ְEU�T�:��@[~p�H]$�"3����gv��C�`�ߝ�|ph��:[ł���̗�|����:�9�)"G��2�k� U�`j�Su��$�����	��PK0S[�?F�Eto�w�_ ,���p����Sx���4mv/�w�=jh�í��(O΄%�36SkCP� ���"��X���v�bv=:S�\�d�خ�z���/!^4��zދ����8��M��̲۽�ӯ�ͻ�G٣�7ǁ��b+s)l�ʢ������ie��ꁚf/��E��?��t�j��     