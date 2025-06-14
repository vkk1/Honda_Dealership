DROP TABLE IF EXISTS user_roles CASCADE;

create table user_roles (
  id uuid primary key references auth.users(id) on delete cascade,
  role text check (role in ('admin', 'user')) not null
);


insert into user_roles (id, role)
select id, 'admin' from auth.users where email = 'arnavatiwari@gmail.com';
