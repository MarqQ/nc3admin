PGDMP                 	        x            nc3e    10.13    12.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    nc3e    DATABASE     �   CREATE DATABASE nc3e WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE nc3e;
                postgres    false            �            1259    16425 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            postgres    false            �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    203                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    202            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            postgres    false            �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    205                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    204            �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            postgres    false            �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    201                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    200            �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            postgres    false            �            1259    16453    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            postgres    false            �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    209                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    208            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    207                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    206            �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            postgres    false            �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    211                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    210            �            1259    16554    core_cliente    TABLE     >   CREATE TABLE public.core_cliente (
    id integer NOT NULL
);
     DROP TABLE public.core_cliente;
       public            postgres    false            �            1259    16552    core_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_cliente_id_seq;
       public          postgres    false    215                       0    0    core_cliente_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_cliente_id_seq OWNED BY public.core_cliente.id;
          public          postgres    false    214            �            1259    16562    core_clienteemail    TABLE     C   CREATE TABLE public.core_clienteemail (
    id integer NOT NULL
);
 %   DROP TABLE public.core_clienteemail;
       public            postgres    false            �            1259    16560    core_clienteemail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_clienteemail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.core_clienteemail_id_seq;
       public          postgres    false    217                       0    0    core_clienteemail_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.core_clienteemail_id_seq OWNED BY public.core_clienteemail.id;
          public          postgres    false    216            �            1259    16570    core_clientetelefone    TABLE     F   CREATE TABLE public.core_clientetelefone (
    id integer NOT NULL
);
 (   DROP TABLE public.core_clientetelefone;
       public            postgres    false            �            1259    16568    core_clientetelefone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_clientetelefone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.core_clientetelefone_id_seq;
       public          postgres    false    219                       0    0    core_clientetelefone_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.core_clientetelefone_id_seq OWNED BY public.core_clientetelefone.id;
          public          postgres    false    218            �            1259    16578    core_fornecedor    TABLE     A   CREATE TABLE public.core_fornecedor (
    id integer NOT NULL
);
 #   DROP TABLE public.core_fornecedor;
       public            postgres    false            �            1259    16576    core_fornecedor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_fornecedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.core_fornecedor_id_seq;
       public          postgres    false    221                       0    0    core_fornecedor_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.core_fornecedor_id_seq OWNED BY public.core_fornecedor.id;
          public          postgres    false    220            �            1259    16586    core_fornecedoremail    TABLE     F   CREATE TABLE public.core_fornecedoremail (
    id integer NOT NULL
);
 (   DROP TABLE public.core_fornecedoremail;
       public            postgres    false            �            1259    16584    core_fornecedoremail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_fornecedoremail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.core_fornecedoremail_id_seq;
       public          postgres    false    223                       0    0    core_fornecedoremail_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.core_fornecedoremail_id_seq OWNED BY public.core_fornecedoremail.id;
          public          postgres    false    222            �            1259    16594    core_fornecedortelefone    TABLE     I   CREATE TABLE public.core_fornecedortelefone (
    id integer NOT NULL
);
 +   DROP TABLE public.core_fornecedortelefone;
       public            postgres    false            �            1259    16592    core_fornecedortelefone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_fornecedortelefone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.core_fornecedortelefone_id_seq;
       public          postgres    false    225                       0    0    core_fornecedortelefone_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.core_fornecedortelefone_id_seq OWNED BY public.core_fornecedortelefone.id;
          public          postgres    false    224            �            1259    16602    core_funcao    TABLE     =   CREATE TABLE public.core_funcao (
    id integer NOT NULL
);
    DROP TABLE public.core_funcao;
       public            postgres    false            �            1259    16600    core_funcao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_funcao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.core_funcao_id_seq;
       public          postgres    false    227                        0    0    core_funcao_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.core_funcao_id_seq OWNED BY public.core_funcao.id;
          public          postgres    false    226            �            1259    16610 	   core_obra    TABLE     ;   CREATE TABLE public.core_obra (
    id integer NOT NULL
);
    DROP TABLE public.core_obra;
       public            postgres    false            �            1259    16608    core_obra_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_obra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_obra_id_seq;
       public          postgres    false    229            !           0    0    core_obra_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_obra_id_seq OWNED BY public.core_obra.id;
          public          postgres    false    228            �            1259    16618    core_obrafornecedor    TABLE     E   CREATE TABLE public.core_obrafornecedor (
    id integer NOT NULL
);
 '   DROP TABLE public.core_obrafornecedor;
       public            postgres    false            �            1259    16616    core_obrafornecedor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_obrafornecedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.core_obrafornecedor_id_seq;
       public          postgres    false    231            "           0    0    core_obrafornecedor_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.core_obrafornecedor_id_seq OWNED BY public.core_obrafornecedor.id;
          public          postgres    false    230            �            1259    16626    core_obramensagem    TABLE     C   CREATE TABLE public.core_obramensagem (
    id integer NOT NULL
);
 %   DROP TABLE public.core_obramensagem;
       public            postgres    false            �            1259    16624    core_obramensagem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_obramensagem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.core_obramensagem_id_seq;
       public          postgres    false    233            #           0    0    core_obramensagem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.core_obramensagem_id_seq OWNED BY public.core_obramensagem.id;
          public          postgres    false    232            �            1259    16634    core_obratarefa    TABLE     A   CREATE TABLE public.core_obratarefa (
    id integer NOT NULL
);
 #   DROP TABLE public.core_obratarefa;
       public            postgres    false            �            1259    16632    core_obratarefa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_obratarefa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.core_obratarefa_id_seq;
       public          postgres    false    235            $           0    0    core_obratarefa_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.core_obratarefa_id_seq OWNED BY public.core_obratarefa.id;
          public          postgres    false    234            �            1259    16642    core_perfil    TABLE     =   CREATE TABLE public.core_perfil (
    id integer NOT NULL
);
    DROP TABLE public.core_perfil;
       public            postgres    false            �            1259    16640    core_perfil_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_perfil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.core_perfil_id_seq;
       public          postgres    false    237            %           0    0    core_perfil_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.core_perfil_id_seq OWNED BY public.core_perfil.id;
          public          postgres    false    236            �            1259    16650 	   core_ramo    TABLE     ;   CREATE TABLE public.core_ramo (
    id integer NOT NULL
);
    DROP TABLE public.core_ramo;
       public            postgres    false            �            1259    16648    core_ramo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_ramo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_ramo_id_seq;
       public          postgres    false    239            &           0    0    core_ramo_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_ramo_id_seq OWNED BY public.core_ramo.id;
          public          postgres    false    238            �            1259    16658    core_usuario    TABLE     �  CREATE TABLE public.core_usuario (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    cpf character varying(11) NOT NULL,
    cnpj character varying(14) NOT NULL,
    telefone character varying(10) NOT NULL,
    cep character varying(8) NOT NULL,
    cidade character varying(20) NOT NULL,
    logradouro_completo character varying(100) NOT NULL
);
     DROP TABLE public.core_usuario;
       public            postgres    false            �            1259    16656    core_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_usuario_id_seq;
       public          postgres    false    241            '           0    0    core_usuario_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.core_usuario_id_seq OWNED BY public.core_usuario.id;
          public          postgres    false    240            �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public            postgres    false            �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    213            (           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    212            �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            postgres    false            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    199            )           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    198            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            postgres    false            �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    197            *           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    196            �            1259    16664    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            postgres    false            �
           2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �
           2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                        2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211                       2604    16557    core_cliente id    DEFAULT     r   ALTER TABLE ONLY public.core_cliente ALTER COLUMN id SET DEFAULT nextval('public.core_cliente_id_seq'::regclass);
 >   ALTER TABLE public.core_cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    16565    core_clienteemail id    DEFAULT     |   ALTER TABLE ONLY public.core_clienteemail ALTER COLUMN id SET DEFAULT nextval('public.core_clienteemail_id_seq'::regclass);
 C   ALTER TABLE public.core_clienteemail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    16573    core_clientetelefone id    DEFAULT     �   ALTER TABLE ONLY public.core_clientetelefone ALTER COLUMN id SET DEFAULT nextval('public.core_clientetelefone_id_seq'::regclass);
 F   ALTER TABLE public.core_clientetelefone ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                       2604    16581    core_fornecedor id    DEFAULT     x   ALTER TABLE ONLY public.core_fornecedor ALTER COLUMN id SET DEFAULT nextval('public.core_fornecedor_id_seq'::regclass);
 A   ALTER TABLE public.core_fornecedor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221                       2604    16589    core_fornecedoremail id    DEFAULT     �   ALTER TABLE ONLY public.core_fornecedoremail ALTER COLUMN id SET DEFAULT nextval('public.core_fornecedoremail_id_seq'::regclass);
 F   ALTER TABLE public.core_fornecedoremail ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            	           2604    16597    core_fornecedortelefone id    DEFAULT     �   ALTER TABLE ONLY public.core_fornecedortelefone ALTER COLUMN id SET DEFAULT nextval('public.core_fornecedortelefone_id_seq'::regclass);
 I   ALTER TABLE public.core_fornecedortelefone ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            
           2604    16605    core_funcao id    DEFAULT     p   ALTER TABLE ONLY public.core_funcao ALTER COLUMN id SET DEFAULT nextval('public.core_funcao_id_seq'::regclass);
 =   ALTER TABLE public.core_funcao ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227                       2604    16613    core_obra id    DEFAULT     l   ALTER TABLE ONLY public.core_obra ALTER COLUMN id SET DEFAULT nextval('public.core_obra_id_seq'::regclass);
 ;   ALTER TABLE public.core_obra ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229                       2604    16621    core_obrafornecedor id    DEFAULT     �   ALTER TABLE ONLY public.core_obrafornecedor ALTER COLUMN id SET DEFAULT nextval('public.core_obrafornecedor_id_seq'::regclass);
 E   ALTER TABLE public.core_obrafornecedor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231                       2604    16629    core_obramensagem id    DEFAULT     |   ALTER TABLE ONLY public.core_obramensagem ALTER COLUMN id SET DEFAULT nextval('public.core_obramensagem_id_seq'::regclass);
 C   ALTER TABLE public.core_obramensagem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                       2604    16637    core_obratarefa id    DEFAULT     x   ALTER TABLE ONLY public.core_obratarefa ALTER COLUMN id SET DEFAULT nextval('public.core_obratarefa_id_seq'::regclass);
 A   ALTER TABLE public.core_obratarefa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    16645    core_perfil id    DEFAULT     p   ALTER TABLE ONLY public.core_perfil ALTER COLUMN id SET DEFAULT nextval('public.core_perfil_id_seq'::regclass);
 =   ALTER TABLE public.core_perfil ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237                       2604    16653    core_ramo id    DEFAULT     l   ALTER TABLE ONLY public.core_ramo ALTER COLUMN id SET DEFAULT nextval('public.core_ramo_id_seq'::regclass);
 ;   ALTER TABLE public.core_ramo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239                       2604    16661    core_usuario id    DEFAULT     r   ALTER TABLE ONLY public.core_usuario ALTER COLUMN id SET DEFAULT nextval('public.core_usuario_id_seq'::regclass);
 >   ALTER TABLE public.core_usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                       2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    199    198    199            �
           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    197    197            �          0    16425 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    203   D�       �          0    16435    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    205   a�       �          0    16417    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    201   ~�       �          0    16443 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    207   ��       �          0    16453    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   ��       �          0    16461    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    211   �       �          0    16554    core_cliente 
   TABLE DATA           *   COPY public.core_cliente (id) FROM stdin;
    public          postgres    false    215   1�       �          0    16562    core_clienteemail 
   TABLE DATA           /   COPY public.core_clienteemail (id) FROM stdin;
    public          postgres    false    217   N�       �          0    16570    core_clientetelefone 
   TABLE DATA           2   COPY public.core_clientetelefone (id) FROM stdin;
    public          postgres    false    219   k�       �          0    16578    core_fornecedor 
   TABLE DATA           -   COPY public.core_fornecedor (id) FROM stdin;
    public          postgres    false    221   ��       �          0    16586    core_fornecedoremail 
   TABLE DATA           2   COPY public.core_fornecedoremail (id) FROM stdin;
    public          postgres    false    223   ��       �          0    16594    core_fornecedortelefone 
   TABLE DATA           5   COPY public.core_fornecedortelefone (id) FROM stdin;
    public          postgres    false    225   ��       �          0    16602    core_funcao 
   TABLE DATA           )   COPY public.core_funcao (id) FROM stdin;
    public          postgres    false    227   ��                  0    16610 	   core_obra 
   TABLE DATA           '   COPY public.core_obra (id) FROM stdin;
    public          postgres    false    229   ��                 0    16618    core_obrafornecedor 
   TABLE DATA           1   COPY public.core_obrafornecedor (id) FROM stdin;
    public          postgres    false    231   �                 0    16626    core_obramensagem 
   TABLE DATA           /   COPY public.core_obramensagem (id) FROM stdin;
    public          postgres    false    233   6�                 0    16634    core_obratarefa 
   TABLE DATA           -   COPY public.core_obratarefa (id) FROM stdin;
    public          postgres    false    235   S�                 0    16642    core_perfil 
   TABLE DATA           )   COPY public.core_perfil (id) FROM stdin;
    public          postgres    false    237   p�       
          0    16650 	   core_ramo 
   TABLE DATA           '   COPY public.core_ramo (id) FROM stdin;
    public          postgres    false    239   ��                 0    16658    core_usuario 
   TABLE DATA           n   COPY public.core_usuario (id, nome, email, cpf, cnpj, telefone, cep, cidade, logradouro_completo) FROM stdin;
    public          postgres    false    241   ��       �          0    16521    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   ��       �          0    16407    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    199   ��       �          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    197   ��                 0    16664    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    242   T�       +           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
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
          public          postgres    false    196                       2606    16550    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    203            $           2606    16477 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    205    205            '           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    205            !           2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    203                       2606    16468 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    201    201                       2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    201            /           2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    209            2           2606    16492 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    209    209            )           2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    207            5           2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    211            8           2606    16506 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    211    211            ,           2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    207            >           2606    16559    core_cliente core_cliente_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_cliente
    ADD CONSTRAINT core_cliente_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_cliente DROP CONSTRAINT core_cliente_pkey;
       public            postgres    false    215            @           2606    16567 (   core_clienteemail core_clienteemail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.core_clienteemail
    ADD CONSTRAINT core_clienteemail_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.core_clienteemail DROP CONSTRAINT core_clienteemail_pkey;
       public            postgres    false    217            B           2606    16575 .   core_clientetelefone core_clientetelefone_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.core_clientetelefone
    ADD CONSTRAINT core_clientetelefone_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.core_clientetelefone DROP CONSTRAINT core_clientetelefone_pkey;
       public            postgres    false    219            D           2606    16583 $   core_fornecedor core_fornecedor_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.core_fornecedor
    ADD CONSTRAINT core_fornecedor_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.core_fornecedor DROP CONSTRAINT core_fornecedor_pkey;
       public            postgres    false    221            F           2606    16591 .   core_fornecedoremail core_fornecedoremail_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.core_fornecedoremail
    ADD CONSTRAINT core_fornecedoremail_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.core_fornecedoremail DROP CONSTRAINT core_fornecedoremail_pkey;
       public            postgres    false    223            H           2606    16599 4   core_fornecedortelefone core_fornecedortelefone_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.core_fornecedortelefone
    ADD CONSTRAINT core_fornecedortelefone_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.core_fornecedortelefone DROP CONSTRAINT core_fornecedortelefone_pkey;
       public            postgres    false    225            J           2606    16607    core_funcao core_funcao_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.core_funcao
    ADD CONSTRAINT core_funcao_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.core_funcao DROP CONSTRAINT core_funcao_pkey;
       public            postgres    false    227            L           2606    16615    core_obra core_obra_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_obra
    ADD CONSTRAINT core_obra_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_obra DROP CONSTRAINT core_obra_pkey;
       public            postgres    false    229            N           2606    16623 ,   core_obrafornecedor core_obrafornecedor_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.core_obrafornecedor
    ADD CONSTRAINT core_obrafornecedor_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.core_obrafornecedor DROP CONSTRAINT core_obrafornecedor_pkey;
       public            postgres    false    231            P           2606    16631 (   core_obramensagem core_obramensagem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.core_obramensagem
    ADD CONSTRAINT core_obramensagem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.core_obramensagem DROP CONSTRAINT core_obramensagem_pkey;
       public            postgres    false    233            R           2606    16639 $   core_obratarefa core_obratarefa_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.core_obratarefa
    ADD CONSTRAINT core_obratarefa_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.core_obratarefa DROP CONSTRAINT core_obratarefa_pkey;
       public            postgres    false    235            T           2606    16647    core_perfil core_perfil_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.core_perfil
    ADD CONSTRAINT core_perfil_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.core_perfil DROP CONSTRAINT core_perfil_pkey;
       public            postgres    false    237            V           2606    16655    core_ramo core_ramo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_ramo
    ADD CONSTRAINT core_ramo_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_ramo DROP CONSTRAINT core_ramo_pkey;
       public            postgres    false    239            X           2606    16663    core_usuario core_usuario_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.core_usuario
    ADD CONSTRAINT core_usuario_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_usuario DROP CONSTRAINT core_usuario_pkey;
       public            postgres    false    241            ;           2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    213                       2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    199    199                       2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    199                       2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    197            [           2606    16671 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    242                       1259    16551    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    203            "           1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    205            %           1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    205                       1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    201            -           1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    209            0           1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    209            3           1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    211            6           1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    211            *           1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    207            9           1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    213            <           1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    213            Y           1259    16673 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    242            \           1259    16672 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    242            _           2606    16483 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    2844    201            ^           2606    16478 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    205    2849    203            ]           2606    16469 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    199    2839    201            a           2606    16498 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    2849    203            `           2606    16493 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2857    207    209            c           2606    16512 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2844    211    201            b           2606    16507 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    211    2857    207            d           2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2839    199    213            e           2606    16536 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2857    207    213            �      x������ � �      �      x������ � �      �     x�u�ݎ�0F����T1���k�T��I#%���վ}�3�|c�;l����3?���_.��x;��5}g��e����O?ܼ�hJ�2���/Ҕ�U ���?������O��<���AM&l�r
d;`[�S,ۉ�"�#p�dy����)�`���rq��q��a��^.��{�����zi]���*oO@��3����޼���6�|������Oo�`�S�u�d0)��^�~�G��蠫X��gOO�	�<��z߅aτ��]0�K����ț~~�OoZ��4��zɅ�w.b��,ް���-ݧ��r�������+L��#�p��n�3Uh[�(6ʉGq�ˍ�k���8xs� q֖�^(�1���Ku:��5�<P���F��:N�?��8����[�^�(�@Zu��Y�
�L�AI�c��̹̙[U�K�F���R�I�^)�BqQ��,==Wd����o�a�&���ߤ��MP)�v�bqWJ�kp}�~4���hdk�$faJu�PQ�)�taȌ	�����Gx뵭U�e� Bul$؁�͸���V����N"�u�+e5`�e��3+e(k�Z>+J9���DO?���?�kR�8g�b�y�"%�&	�@)��X�2^��~��幵ɟfl�l����s��;�]f-pr��t�r���_�.l��mUG	"G�@��J����&c!��ե��Or���꨸�D���;����*����tMq�3l�V�@�(˜��҉���(>����Z�p�p�      �   V  x�m��n�@�3<�nFܝ�v�&��b1��R�i� �(P���M�F�&�d�/?�6~��ೌ=`��T�B�<�Y�^��R9�,Oǝ��_�`UY������L�5CN��]������w @-��i C] R1��H���+�������+ ���������`T W)�����̏ih͖h�qe�V���on���Kg�ϭlK�x8*fF3y'Ms:2�&w��T���b�؉I�"� J���
M��T�g4��ָ'v��X)��9�;�yv0�������p��#��|4�M�}��DsAA �b��9�A�n�Ux��^��0tj�.�S$��,� H���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      
      x������ � �            x������ � �      �      x������ � �      �   �   x�]��� E�܏q��V��ִ2SH'��/J�>v�CnH�ʼ��j�|��2)��D�l�=.��iB] 4�cs,��-����@��T7�\D�퐜�#�;i��=A���Y<u�b��GU:����.��*��0t]��b����\W��3��nW�P���2�����9Ĩ��SHF,�q���}~      �   �  x���[n�0�g���@"�/]�HGV�RK��T��k[�D*�9?�1���)�)��lc���&��:�:#~&�o��QqJINΈ�Hg��q<!��H�	ڙ����#u�=F��A������|�v�7��E��>�<暜��}0=\?����ߕ�d��?�"[�u�
Lf������B��3$`�at1�HeF����|�>�5��j]�%���4�E�Ma�J��8~N/��I�.F����`b*ջ�f˰���Тn�M������;��^ zC_�\�|���L�!�ݷ!� ������9�8�8���k��Z�*�&���bl�7
���_��1�iM+#�a�sE���O_�~Ѻ���'#أ�-/X�-��]��1����I/�����O         �  x���I��0 E�p�� ���jѪ�(Q٨P�����H���j�R�k����h\G]�5���c�u����z܏v�oxB�"!��� ����BS��ل+�U�I�b �^�[M-5\]�H�H���-O��x�����d�ְEU�T�:��@[~p�H]$�"3����gv��C�`�ߝ�|ph��:[ł���̗�|����:�9�)"G��2�k� U�`j�Su��$�����	��PK0S[�?F�Eto�w�_ ,���p����Sx���4mv/�w�=jh�í��(O΄%�36SkCP� ���"��X���v�bv=:S�\�d�خ�z���/!^4��zދ����8��M��̲۽�ӯ�ͻ�G٣�7ǁ��b+s)l�ʢ������ie��ꁚf/��E��?��t�j��     