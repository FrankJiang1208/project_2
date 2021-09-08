select * from artists;
select * from billboard;
select * from grammy_songs;

--rank by genre, number of times it appears in data
select b.genre, count(b.genre) from billboard b group by b.genre order by count(b.genre) DESC
select g.genre, count(g.genre) from grammy_songs g group by g.genre order by count(g.genre) DESC

--rank by artist name, number of times they appear in data
select b.artist, count(b.artist) from billboard b group by b.artist order by count(b.artist) DESC
select g.artist, count(g.artist) from grammy_songs g group by g.artist order by count(g.artist) DESC


----------------------------------------------------------------------------------------------------
--join Artists and Billboard data
select b.artist, b.year , b.weeks_on_chart,   a.peak_position, a.num_albums
from billboard b
inner join artists a
on  a.artist = b.artist

--all join (raw)
select b.artist, b.week, b.weeks_on_chart,   a.genres, a.num_albums, g.grammy_award, g.grammy_year
from billboard b
inner join artists a
on  a.artist = b.artist
left join grammy_songs g
on b.artist = g.artist


--deleting duplicate rows due to weekly_rank and making an edited table (test)
select * into test from billboard 
delete from test a using (select min(ctid) as ctid, artist from test group by artist having count(*)>1) b where a.artist = b.artist and a.ctid <> b.ctid
select * from test
--all join (shows which billboard songs have grammy awards)
select a.artist, t.week, t.weeks_on_chart,   a.genres, a.num_albums, g.grammy_award, g.grammy_year
from test t
inner join artists a
on  a.artist = t.artists
left join grammy_songs g
on t.artist = g.artist
order by g.grammy_year asc
--join showing which grammy songs have billboard ranks
select g.artist, g.artist, g.grammy_award, g.grammy_year, t.peak_position
from grammy_songs g	
left join test t
on g.artist = t.artist