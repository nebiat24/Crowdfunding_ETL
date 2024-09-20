CREATE TABLE category
(
    category_id character varying(50) NOT NULL,
    category character varying(50),
    CONSTRAINT category_pkey PRIMARY KEY (category_id)
);
CREATE TABLE subcategory
(
    subcategory_id character varying(50) NOT NULL,
    subcategory character varying(50),
    CONSTRAINT subcategory_pkey PRIMARY KEY (subcategory_id)
);
CREATE TABLE contacts
(
    contact_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(50),
    CONSTRAINT contacts_pkey PRIMARY KEY (contact_id)
);
CREATE TABLE campaign
(
    cf_id integer NOT NULL,
    contact_id integer,
    company_name character varying(50),
    description character varying(255),
    goal numeric,
    pledged numeric,
    outcome character varying(50),
    backers_count integer,
    country character varying(50),
    currency character varying(50),
    launch_date timestamp,
    end_date timestamp,
    category_id character varying(50),
    subcategory_id character varying(50),
    CONSTRAINT campaign_pkey PRIMARY KEY (cf_id),
    CONSTRAINT fk_category FOREIGN KEY (category_id)
        REFERENCES public.category (category_id),
    CONSTRAINT fk_subcategory FOREIGN KEY (subcategory_id)
        REFERENCES subcategory (subcategory_id) MATCH SIMPLE
  );
select * from campaign
select * from category
select * from contacts
select * from subcategory