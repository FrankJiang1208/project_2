select * from public."Artists";
select* from public."Billboard";
select * from public."Grammy";

select b."Name", a."Artist", b."Date", b."Weekly_rank",   a."Genres", a."NumAlbums"
from public."Billboard" b
inner join public."Artists" a
on  a."Artist" = b."Artists"

----------------------------------------------------------------------------------------------------

--all join (raw)
select b."Name", a."Artist", b."Date", b."Weekly_rank",   a."Genres", a."NumAlbums", g."GrammyAward", g."GrammyYear"
from public."Billboard" b
inner join public."Artists" a
on  a."Artist" = b."Artists"
left join public."Grammy" g
on b."Name" = g."Name"


--deleting duplicate rows due to weekly_rank
select * into test from public."Billboard" 
delete from test a using (select min(ctid) as ctid, "Name" from test group by "Name" having count(*)>1) b where a."Name" = b."Name" and a.ctid <> b.ctid
select * from test
--all join (shows which billboard songs have grammy awards)
select t."Name", a."Artist", t."Date", t."Weekly_rank",   a."Genres", a."NumAlbums", g."GrammyAward", g."GrammyYear"
from test t
inner join public."Artists" a
on  a."Artist" = t."Artists"
left join public."Grammy" g
on t."Name" = g."Name"

--join showing which grammy songs have billboard ranks
select g."Name", g."Artist", g."GrammyAward", g."GrammyYear", t."Peak_position"
from public."Grammy" g
left join test t
on g."Name" = t."Name"
