PGDMP     (    1            
    z            PIZZERIA    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16608    PIZZERIA    DATABASE     }   CREATE DATABASE "PIZZERIA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Kenya.1252';
    DROP DATABASE "PIZZERIA";
                postgres    false            ?            1259    16631    PIZZAS    TABLE     ?   CREATE TABLE public."PIZZAS" (
    "Pizza_ID" text NOT NULL,
    "Pizza_Type" text,
    "Cost" money,
    "Sales_ID" integer
);
    DROP TABLE public."PIZZAS";
       public         heap    postgres    false            ?            1259    16643    PIZZA_INGREDIENTS    TABLE     ?   CREATE TABLE public."PIZZA_INGREDIENTS" (
    "Ingredient_ID" text NOT NULL,
    "Ingredient_Type" text,
    "Pizza_ID" text,
    "Quantity(grams)" integer
);
 '   DROP TABLE public."PIZZA_INGREDIENTS";
       public         heap    postgres    false            ?            1259    16616    PIZZA_SALES    TABLE     ?   CREATE TABLE public."PIZZA_SALES" (
    "Sales_ID" integer NOT NULL,
    "Date" date,
    "Time" time without time zone,
    "Server_ID" integer,
    "Quantity_Sold" integer
);
 !   DROP TABLE public."PIZZA_SALES";
       public         heap    postgres    false            ?            1259    16609    SERVERS    TABLE     t   CREATE TABLE public."SERVERS" (
    "Server_ID" integer NOT NULL,
    "Server Name" text,
    "Sales_ID" integer
);
    DROP TABLE public."SERVERS";
       public         heap    postgres    false            ?            1259    16655 	   SUPPLIERS    TABLE     ?   CREATE TABLE public."SUPPLIERS" (
    "Supplier_ID" integer NOT NULL,
    "Supplier_Name" text,
    "Address" text,
    "Ingredient_ID" text
);
    DROP TABLE public."SUPPLIERS";
       public         heap    postgres    false                      0    16631    PIZZAS 
   TABLE DATA           P   COPY public."PIZZAS" ("Pizza_ID", "Pizza_Type", "Cost", "Sales_ID") FROM stdin;
    public          postgres    false    216                    0    16643    PIZZA_INGREDIENTS 
   TABLE DATA           p   COPY public."PIZZA_INGREDIENTS" ("Ingredient_ID", "Ingredient_Type", "Pizza_ID", "Quantity(grams)") FROM stdin;
    public          postgres    false    217   ?                 0    16616    PIZZA_SALES 
   TABLE DATA           a   COPY public."PIZZA_SALES" ("Sales_ID", "Date", "Time", "Server_ID", "Quantity_Sold") FROM stdin;
    public          postgres    false    215   ?                 0    16609    SERVERS 
   TABLE DATA           K   COPY public."SERVERS" ("Server_ID", "Server Name", "Sales_ID") FROM stdin;
    public          postgres    false    214   ?                 0    16655 	   SUPPLIERS 
   TABLE DATA           a   COPY public."SUPPLIERS" ("Supplier_ID", "Supplier_Name", "Address", "Ingredient_ID") FROM stdin;
    public          postgres    false    218   ?       y           2606    16637    PIZZAS PIZZAS_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."PIZZAS"
    ADD CONSTRAINT "PIZZAS_pkey" PRIMARY KEY ("Pizza_ID");
 @   ALTER TABLE ONLY public."PIZZAS" DROP CONSTRAINT "PIZZAS_pkey";
       public            postgres    false    216            {           2606    16649 (   PIZZA_INGREDIENTS PIZZA_INGREDIENTS_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."PIZZA_INGREDIENTS"
    ADD CONSTRAINT "PIZZA_INGREDIENTS_pkey" PRIMARY KEY ("Ingredient_ID");
 V   ALTER TABLE ONLY public."PIZZA_INGREDIENTS" DROP CONSTRAINT "PIZZA_INGREDIENTS_pkey";
       public            postgres    false    217            w           2606    16620    PIZZA_SALES PIZZA_SALES_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."PIZZA_SALES"
    ADD CONSTRAINT "PIZZA_SALES_pkey" PRIMARY KEY ("Sales_ID");
 J   ALTER TABLE ONLY public."PIZZA_SALES" DROP CONSTRAINT "PIZZA_SALES_pkey";
       public            postgres    false    215            u           2606    16615    SERVERS SERVERS_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."SERVERS"
    ADD CONSTRAINT "SERVERS_pkey" PRIMARY KEY ("Server_ID");
 B   ALTER TABLE ONLY public."SERVERS" DROP CONSTRAINT "SERVERS_pkey";
       public            postgres    false    214            }           2606    16661    SUPPLIERS SUPPLIERS_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."SUPPLIERS"
    ADD CONSTRAINT "SUPPLIERS_pkey" PRIMARY KEY ("Supplier_ID");
 F   ALTER TABLE ONLY public."SUPPLIERS" DROP CONSTRAINT "SUPPLIERS_pkey";
       public            postgres    false    218            ?           2606    16691    SUPPLIERS Ingredient_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY public."SUPPLIERS"
    ADD CONSTRAINT "Ingredient_ID" FOREIGN KEY ("Ingredient_ID") REFERENCES public."PIZZA_INGREDIENTS"("Ingredient_ID") NOT VALID;
 E   ALTER TABLE ONLY public."SUPPLIERS" DROP CONSTRAINT "Ingredient_ID";
       public          postgres    false    218    3195    217            ?           2606    16676    PIZZA_INGREDIENTS PizzaID    FK CONSTRAINT     ?   ALTER TABLE ONLY public."PIZZA_INGREDIENTS"
    ADD CONSTRAINT "PizzaID" FOREIGN KEY ("Pizza_ID") REFERENCES public."PIZZAS"("Pizza_ID") NOT VALID;
 G   ALTER TABLE ONLY public."PIZZA_INGREDIENTS" DROP CONSTRAINT "PizzaID";
       public          postgres    false    216    217    3193            ?           2606    16671    PIZZAS Sales_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY public."PIZZAS"
    ADD CONSTRAINT "Sales_ID" FOREIGN KEY ("Sales_ID") REFERENCES public."PIZZA_SALES"("Sales_ID") NOT VALID;
 =   ALTER TABLE ONLY public."PIZZAS" DROP CONSTRAINT "Sales_ID";
       public          postgres    false    215    3191    216            ~           2606    16686    SERVERS Sales_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY public."SERVERS"
    ADD CONSTRAINT "Sales_ID" FOREIGN KEY ("Sales_ID") REFERENCES public."PIZZA_SALES"("Sales_ID") NOT VALID;
 >   ALTER TABLE ONLY public."SERVERS" DROP CONSTRAINT "Sales_ID";
       public          postgres    false    215    3191    214                       2606    16681    PIZZA_SALES Server_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY public."PIZZA_SALES"
    ADD CONSTRAINT "Server_ID" FOREIGN KEY ("Server_ID") REFERENCES public."SERVERS"("Server_ID") NOT VALID;
 C   ALTER TABLE ONLY public."PIZZA_SALES" DROP CONSTRAINT "Server_ID";
       public          postgres    false    3189    215    214               ?   x?]ͱ?0??}
@????gJBLjiY?iB?i?N??T&n????澀F?`??9ޗ???=? J ?	?'%]g?S?Ŕ??|???f?Z?|&(????i?Yԛ@ ???+HU??q?????~?Vr[P?6??gk?W?]?}>?R?/?16         m   x??1
?0??99??4?C???.???R4?("??Ǹ????0??*"o dN???~?'???w??8t???'???sq?o??ϓ???v? ??m)K??0?ɏ??K????         Y   x?-???0??܋??Y???:N????Mq?? N????Q?mlP???N?????RŶL??,??N}SiT1???꜌͞k??Y?         G   x?ɱ?0????l?:?޿?9??\L?????>T?;?!?R??LSB?gBt?вR?Z˾?????         ?   x????  ???W??	X£V????z??bl2Q6??ϯ?Unue
?i]???;?>???:?x?ɹMs??3?H??QR??0a?c???Dx??r?
?K?Ke+??UZB?[o?!.c3gK?=?\h)?s????)?     