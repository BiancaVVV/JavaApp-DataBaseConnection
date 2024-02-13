PGDMP     !                    {            Shop    12.16    12.6 )    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16539    Shop    DATABASE     d   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "Shop";
                postgres    false            �            1259    16603    angajat    TABLE     �   CREATE TABLE public.angajat (
    id bigint NOT NULL,
    nume character varying(255) NOT NULL,
    prenume character varying(255) NOT NULL
);
    DROP TABLE public.angajat;
       public         heap    postgres    false            �            1259    16549 	   categorie    TABLE     d   CREATE TABLE public.categorie (
    id bigint NOT NULL,
    nume character varying(255) NOT NULL
);
    DROP TABLE public.categorie;
       public         heap    postgres    false            �            1259    16595    client    TABLE     �   CREATE TABLE public.client (
    id bigint NOT NULL,
    "Nume" character varying(255) NOT NULL,
    "Prenume" character varying(255) NOT NULL,
    "Adresa" character varying(255) NOT NULL
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    16572    factura    TABLE     �   CREATE TABLE public.factura (
    "NrFactura" bigint NOT NULL,
    "Data" character varying(255) NOT NULL,
    id_angajat bigint NOT NULL,
    id_client bigint NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    16563    parfum    TABLE     �   CREATE TABLE public.parfum (
    cod bigint NOT NULL,
    idcategorie bigint NOT NULL,
    denumire character varying(255) NOT NULL,
    id_producator bigint NOT NULL
);
    DROP TABLE public.parfum;
       public         heap    postgres    false            �            1259    16540    parfum_categorie    TABLE     �   CREATE TABLE public.parfum_categorie (
    id bigint NOT NULL,
    "idProdus" bigint NOT NULL,
    "idCategorie" bigint NOT NULL
);
 $   DROP TABLE public.parfum_categorie;
       public         heap    postgres    false            �            1259    16581 
   producator    TABLE     i   CREATE TABLE public.producator (
    id bigint NOT NULL,
    denumire character varying(255) NOT NULL
);
    DROP TABLE public.producator;
       public         heap    postgres    false            �            1259    16586    produs_factura    TABLE     �   CREATE TABLE public.produs_factura (
    id bigint NOT NULL,
    "idProdus" bigint NOT NULL,
    "codFactura" bigint NOT NULL
);
 "   DROP TABLE public.produs_factura;
       public         heap    postgres    false            �            1259    16554    recenzie    TABLE     �   CREATE TABLE public.recenzie (
    id bigint NOT NULL,
    id_client bigint NOT NULL,
    rating bigint NOT NULL,
    id_parfum bigint NOT NULL
);
    DROP TABLE public.recenzie;
       public         heap    postgres    false                      0    16603    angajat 
   TABLE DATA           4   COPY public.angajat (id, nume, prenume) FROM stdin;
    public          postgres    false    210   �0       x          0    16549 	   categorie 
   TABLE DATA           -   COPY public.categorie (id, nume) FROM stdin;
    public          postgres    false    203   �0       ~          0    16595    client 
   TABLE DATA           A   COPY public.client (id, "Nume", "Prenume", "Adresa") FROM stdin;
    public          postgres    false    209   P1       {          0    16572    factura 
   TABLE DATA           M   COPY public.factura ("NrFactura", "Data", id_angajat, id_client) FROM stdin;
    public          postgres    false    206   �1       z          0    16563    parfum 
   TABLE DATA           K   COPY public.parfum (cod, idcategorie, denumire, id_producator) FROM stdin;
    public          postgres    false    205   M2       w          0    16540    parfum_categorie 
   TABLE DATA           I   COPY public.parfum_categorie (id, "idProdus", "idCategorie") FROM stdin;
    public          postgres    false    202   �2       |          0    16581 
   producator 
   TABLE DATA           2   COPY public.producator (id, denumire) FROM stdin;
    public          postgres    false    207   �2       }          0    16586    produs_factura 
   TABLE DATA           F   COPY public.produs_factura (id, "idProdus", "codFactura") FROM stdin;
    public          postgres    false    208   [3       y          0    16554    recenzie 
   TABLE DATA           D   COPY public.recenzie (id, id_client, rating, id_parfum) FROM stdin;
    public          postgres    false    204   x3       �           2606    16610    angajat angajat_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.angajat
    ADD CONSTRAINT angajat_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.angajat DROP CONSTRAINT angajat_pkey;
       public            postgres    false    210            �           2606    16553    categorie categorie_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categorie
    ADD CONSTRAINT categorie_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categorie DROP CONSTRAINT categorie_pkey;
       public            postgres    false    203            �           2606    16602    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    209            �           2606    16576    factura factura_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY ("NrFactura");
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    206            �           2606    16548 4   parfum_categorie parfum_categorie_idcategorie_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public.parfum_categorie
    ADD CONSTRAINT parfum_categorie_idcategorie_unique UNIQUE ("idCategorie");
 ^   ALTER TABLE ONLY public.parfum_categorie DROP CONSTRAINT parfum_categorie_idcategorie_unique;
       public            postgres    false    202            �           2606    16544 &   parfum_categorie parfum_categorie_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.parfum_categorie
    ADD CONSTRAINT parfum_categorie_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.parfum_categorie DROP CONSTRAINT parfum_categorie_pkey;
       public            postgres    false    202            �           2606    16567    parfum parfum_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.parfum
    ADD CONSTRAINT parfum_pkey PRIMARY KEY (cod);
 <   ALTER TABLE ONLY public.parfum DROP CONSTRAINT parfum_pkey;
       public            postgres    false    205            �           2606    16585    producator producator_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.producator
    ADD CONSTRAINT producator_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.producator DROP CONSTRAINT producator_pkey;
       public            postgres    false    207            �           2606    16590 "   produs_factura produs_factura_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.produs_factura
    ADD CONSTRAINT produs_factura_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.produs_factura DROP CONSTRAINT produs_factura_pkey;
       public            postgres    false    208            �           2606    16558    recenzie recenzie_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.recenzie
    ADD CONSTRAINT recenzie_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.recenzie DROP CONSTRAINT recenzie_pkey;
       public            postgres    false    204            �           2606    16621 "   factura factura_id_angajat_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_angajat_foreign FOREIGN KEY (id_angajat) REFERENCES public.angajat(id);
 L   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_angajat_foreign;
       public          postgres    false    210    3055    206            �           2606    16646 !   factura factura_id_client_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_client_foreign FOREIGN KEY (id_client) REFERENCES public.client(id);
 K   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_client_foreign;
       public          postgres    false    206    209    3053            �           2606    16626 5   parfum_categorie parfum_categorie_idcategorie_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.parfum_categorie
    ADD CONSTRAINT parfum_categorie_idcategorie_foreign FOREIGN KEY ("idCategorie") REFERENCES public.categorie(id);
 _   ALTER TABLE ONLY public.parfum_categorie DROP CONSTRAINT parfum_categorie_idcategorie_foreign;
       public          postgres    false    203    202    3041            �           2606    16651 2   parfum_categorie parfum_categorie_idprodus_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.parfum_categorie
    ADD CONSTRAINT parfum_categorie_idprodus_foreign FOREIGN KEY ("idProdus") REFERENCES public.parfum(cod);
 \   ALTER TABLE ONLY public.parfum_categorie DROP CONSTRAINT parfum_categorie_idprodus_foreign;
       public          postgres    false    202    205    3045            �           2606    16631 #   parfum parfum_id_producator_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.parfum
    ADD CONSTRAINT parfum_id_producator_foreign FOREIGN KEY (id_producator) REFERENCES public.producator(id);
 M   ALTER TABLE ONLY public.parfum DROP CONSTRAINT parfum_id_producator_foreign;
       public          postgres    false    3049    207    205            �           2606    16611 0   produs_factura produs_factura_codfactura_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.produs_factura
    ADD CONSTRAINT produs_factura_codfactura_foreign FOREIGN KEY ("codFactura") REFERENCES public.factura("NrFactura");
 Z   ALTER TABLE ONLY public.produs_factura DROP CONSTRAINT produs_factura_codfactura_foreign;
       public          postgres    false    208    3047    206            �           2606    16616 .   produs_factura produs_factura_idprodus_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.produs_factura
    ADD CONSTRAINT produs_factura_idprodus_foreign FOREIGN KEY ("idProdus") REFERENCES public.parfum(cod);
 X   ALTER TABLE ONLY public.produs_factura DROP CONSTRAINT produs_factura_idprodus_foreign;
       public          postgres    false    208    3045    205            �           2606    16636 #   recenzie recenzie_id_client_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.recenzie
    ADD CONSTRAINT recenzie_id_client_foreign FOREIGN KEY (id_client) REFERENCES public.client(id);
 M   ALTER TABLE ONLY public.recenzie DROP CONSTRAINT recenzie_id_client_foreign;
       public          postgres    false    3053    204    209            �           2606    16641 #   recenzie recenzie_id_parfum_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.recenzie
    ADD CONSTRAINT recenzie_id_parfum_foreign FOREIGN KEY (id_parfum) REFERENCES public.parfum(cod);
 M   ALTER TABLE ONLY public.recenzie DROP CONSTRAINT recenzie_id_parfum_foreign;
       public          postgres    false    204    205    3045               [   x�3426��/H-N.�����2426��M,��9�V$�%�$�8������TN��ҔL��9\Y)X+XЂ�1�*�#5�+F��� !� }      x   C   x�3466�L��/J��2466�L+*M.I,q�9�2S�J R&�9��y�� �)grfIQf2W� �>�      ~   �   x�M�1
1��zr�=�����-��`e3&��D&��7��x�����h��I�U=G�K�8�Bn��P.��1��(�B�GI+�\:�^ኁb�+w;ʃ�"w07���w��p�Y�&�(xoa��,�y-v|�(��)	G�      {   M   x�=˱� C��g��!�d�9�(hԜ>�1�t9�|�p�yd^Y�����$%SBI��RH�'<�JK�>7�0]�      z   q   x�%˱�0���~�>j� �+t����bQi"�ϏN�����3��>=��Z�r�3�j�����}z��{/�����?/����F�@�����V\�	i�o�7x�ׅ�0�!�      w      x������ � �      |   `   x�Ƚ
�  ���)����v�Ɔ���<LA$������h�+J+5�9U�6$�l�bl଩�G��'���o�=��%|]��D�����x���zc-      }      x������ � �      y   =   x�%��	  �sR��ۋ��!��cF�FdffSRmC�i(C�eh��K�.��/�     