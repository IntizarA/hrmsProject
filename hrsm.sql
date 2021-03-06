-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE public."activationCode_candidates"
(
    activation_code_id integer NOT NULL,
    candidate_user_id integer,
    PRIMARY KEY (activation_code_id)
);

CREATE TABLE public."activationCode_employees"
(
    activation_code_id integer NOT NULL,
    employee_user_id integer,
    PRIMARY KEY (activation_code_id)
);

CREATE TABLE public."activationCodes"
(
    id integer NOT NULL,
    activatio_code character varying(50),
    is_confirmed boolean,
    confirm_date date,
    PRIMARY KEY (id)
);

CREATE TABLE public.candidates
(
    id integer NOT NULL,
    "firstName" character varying(25),
    "lastName" character varying(25),
    "nationalityId" character varying(15),
    "dateOfBirth" date,
    PRIMARY KEY (id)
);

CREATE TABLE public.employees
(
    id integer NOT NULL,
    "firstName" character varying(25),
    "lastName" character varying(25),
    PRIMARY KEY (id)
);

CREATE TABLE public.employers
(
    id integer NOT NULL,
    "companyName" character varying(60),
    web_address character varying(60),
    "phoneNumber" character varying(10),
    PRIMARY KEY (id)
);

CREATE TABLE public."jobTitle"
(
    id integer NOT NULL,
    title character varying,
    PRIMARY KEY (id)
);

CREATE TABLE public.users
(
    id integer NOT NULL,
    email character varying(50),
    password character varying(20),
    PRIMARY KEY (id)
);

ALTER TABLE public."activationCode_candidates"
    ADD FOREIGN KEY (activation_code_id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public."activationCode_candidates"
    ADD FOREIGN KEY (activation_code_id)
    REFERENCES public."activationCodes" (id)
    NOT VALID;


ALTER TABLE public."activationCode_candidates"
    ADD FOREIGN KEY (candidate_user_id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public."activationCode_employees"
    ADD FOREIGN KEY (activation_code_id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public."activationCode_employees"
    ADD FOREIGN KEY (activation_code_id)
    REFERENCES public."activationCodes" (id)
    NOT VALID;


ALTER TABLE public."activationCode_employees"
    ADD FOREIGN KEY (employee_user_id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public.candidates
    ADD FOREIGN KEY (id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public.employees
    ADD FOREIGN KEY (id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public.employers
    ADD FOREIGN KEY (id)
    REFERENCES public.users (id)
    NOT VALID;

END;