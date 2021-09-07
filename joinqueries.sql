select * from public."Artists";
select * from public."Billboard";
select * from public."Grammy";

--rank by genre, number of times it appears in data
select b."Genre", count(b."Genre") from public."Billboard" b group by b."Genre" order by count(b."Genre") DESC
select g."Genre", count(g."Genre") from public."Grammy" g group by g."Genre" order by count(g."Genre") DESC

--rank by artist name, number of times they appear in data
select b."Artists", count(b."Artists") from public."Billboard" b group by b."Artists" order by count(b."Artists") DESC
select g."Artist", count(g."Artist") from public."Grammy" g group by g."Artist" order by count(g."Artist") DESC


----------------------------------------------------------------------------------------------------
--join Artists and Billboard data
select b."Name", a."Artist", b."Date", b."Weekly_rank",   a."Genres", a."NumAlbums"
from public."Billboard" b
inner join public."Artists" a
on  a."Artist" = b."Artists"

--all join (raw)
select b."Name", a."Artist", b."Date", b."Weekly_rank",   a."Genres", a."NumAlbums", g."GrammyAward", g."GrammyYear"
from public."Billboard" b
inner join public."Artists" a
on  a."Artist" = b."Artists"
left join public."Grammy" g
on b."Name" = g."Name"


--deleting duplicate rows due to weekly_rank and making an edited table (test)
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
