DO $$ 
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'appointment_type') THEN
      CREATE TYPE appointment_type AS ENUM ('full_time', 'part_time', 'adjunct', 'graduate_assistant');
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'role_type') THEN
      CREATE TYPE  role_type AS ENUM (  'faculty', 'staff');
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'event_type') THEN
      CREATE TYPE event_type AS ENUM ('seminar', 'workshop', 'conference', 'meeting');
    END IF;
END $$;

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'consultation_status') THEN
      CREATE TYPE consultation_status AS ENUM ('pending', 'approved', 'cancelled', 'completed');
    END IF;
END $$;

CREATE TABLE IF NOT EXISTS users (
    uuid uuid PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    department varchar(255),
    dept_chair text,
    appointment appointment_type,
    role role_type
);

CREATE TABLE IF NOT EXISTS events (
    uuid uuid PRIMARY KEY,
    name varchar(255),
    description text,
    start_time timestamp,
    end_time timestamp,
    location varchar(255),
    organizer uuid,
    FOREIGN KEY (organizer) REFERENCES users (uuid),
    duration interval,
    type event_type,
    capacity int,
    stipend int,
    registrants uuid[],
    attendees uuid[]
);

CREATE TABLE IF NOT EXISTS consultations (
    uuid uuid PRIMARY KEY,
    requester uuid,
    FOREIGN KEY (requester) REFERENCES users (uuid),
    consultant uuid,
    FOREIGN KEY (consultant) REFERENCES users (uuid),
    subject varchar(255),
    description text,
    request_time timestamp,
    request_date date,
    status consultation_status,
    notes text
);





