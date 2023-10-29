PGDMP  ,                	    {           ctl_db    16.0    16.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    ctl_db    DATABASE     �   CREATE DATABASE ctl_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE ctl_db;
                postgres    false            J           1247    16527    appointment_type    TYPE     {   CREATE TYPE public.appointment_type AS ENUM (
    'full_time',
    'part_time',
    'adjunct',
    'graduate_assistant'
);
 #   DROP TYPE public.appointment_type;
       public          postgres    false            S           1247    16552    consultation_status    TYPE     t   CREATE TYPE public.consultation_status AS ENUM (
    'pending',
    'approved',
    'cancelled',
    'completed'
);
 &   DROP TYPE public.consultation_status;
       public          postgres    false            P           1247    16542 
   event_type    TYPE     j   CREATE TYPE public.event_type AS ENUM (
    'seminar',
    'workshop',
    'conference',
    'meeting'
);
    DROP TYPE public.event_type;
       public          postgres    false            M           1247    16536 	   role_type    TYPE     E   CREATE TYPE public.role_type AS ENUM (
    'faculty',
    'staff'
);
    DROP TYPE public.role_type;
       public          postgres    false            �            1259    16580    consultations    TABLE       CREATE TABLE public.consultations (
    uuid uuid NOT NULL,
    requester uuid,
    consultant uuid,
    subject character varying(255),
    description text,
    request_time timestamp without time zone,
    request_date date,
    status public.consultation_status,
    notes text
);
 !   DROP TABLE public.consultations;
       public         heap    postgres    false    851            �            1259    16568    events    TABLE     �  CREATE TABLE public.events (
    uuid uuid NOT NULL,
    name character varying(255),
    description text,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    location character varying(255),
    organizer uuid,
    duration interval,
    type public.event_type,
    capacity integer,
    stipend integer,
    registrants uuid[],
    attendees uuid[]
);
    DROP TABLE public.events;
       public         heap    postgres    false    848            �            1259    16561    users    TABLE     %  CREATE TABLE public.users (
    uuid uuid NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    department character varying(255),
    dept_chair text,
    appointment public.appointment_type,
    role public.role_type
);
    DROP TABLE public.users;
       public         heap    postgres    false    845    842            �          0    16580    consultations 
   TABLE DATA           �   COPY public.consultations (uuid, requester, consultant, subject, description, request_time, request_date, status, notes) FROM stdin;
    public          postgres    false    217   �       �          0    16568    events 
   TABLE DATA           �   COPY public.events (uuid, name, description, start_time, end_time, location, organizer, duration, type, capacity, stipend, registrants, attendees) FROM stdin;
    public          postgres    false    216   �       �          0    16561    users 
   TABLE DATA           n   COPY public.users (uuid, first_name, last_name, email, department, dept_chair, appointment, role) FROM stdin;
    public          postgres    false    215          h           2606    16586     consultations consultations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.consultations
    ADD CONSTRAINT consultations_pkey PRIMARY KEY (uuid);
 J   ALTER TABLE ONLY public.consultations DROP CONSTRAINT consultations_pkey;
       public            postgres    false    217            f           2606    16574    events events_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (uuid);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    216            d           2606    16567    users users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (uuid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            j           2606    16592 +   consultations consultations_consultant_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultations
    ADD CONSTRAINT consultations_consultant_fkey FOREIGN KEY (consultant) REFERENCES public.users(uuid);
 U   ALTER TABLE ONLY public.consultations DROP CONSTRAINT consultations_consultant_fkey;
       public          postgres    false    4708    217    215            k           2606    16587 *   consultations consultations_requester_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultations
    ADD CONSTRAINT consultations_requester_fkey FOREIGN KEY (requester) REFERENCES public.users(uuid);
 T   ALTER TABLE ONLY public.consultations DROP CONSTRAINT consultations_requester_fkey;
       public          postgres    false    217    215    4708            i           2606    16575    events events_organizer_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_organizer_fkey FOREIGN KEY (organizer) REFERENCES public.users(uuid);
 F   ALTER TABLE ONLY public.events DROP CONSTRAINT events_organizer_fkey;
       public          postgres    false    4708    215    216            �      x������ � �      �      x������ � �      �      x������ � �     