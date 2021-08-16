CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name  VARCHAR(255) NOT NULL, 
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255), 
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  -- ON DELETE CASCADE option is to specify whether you want rows deleted in a child table when corresponding rows are deleted in the parent table. 
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);