select * from artists;
select * from billboard;
select * from grammy_songs;
select * from grammy_songs_joined_billboard;

--rank by genre, number of times it appears in data
select b.genre, count(b.genre) from billboard b group by b.genre order by count(b.genre) DESC
select g.genre, count(g.genre) from grammy_songs g group by g.genre order by count(g.genre) DESC

--rank by artist name, number of times they appear in data
select b.artist, count(b.artist) from billboard b group by b.artist order by count(b.artist) DESC
select g.artist, count(g.artist) from grammy_songs g group by g.artist order by count(g.artist) DESC


----------------------------------------------------------------------------------------------------
--join Artists and Billboard data
select b.artist, b.name_of_song, b.year , b.weeks_on_chart,   b.peak_position, a.num_albums, a.genre
from billboard b
inner join artists a
on  a.artist = b.artist

--all join (raw)
select b.artist, b.year, b.weeks_on_chart,   a.genre, a.num_albums, g.grammy_award, g.grammy_year
from billboard b
inner join artists a
on  a.artist = b.artist
left join grammy_songs g
on b.artist = g.artist

--all join
select g.artist, g.name_of_song, g.grammy_award, g.grammy_year, b.peak_position, a.genre
from grammy_songs g	
left join billboard b
on g.name_of_song = b.name_of_song
inner join artists a
on g.artist = a.artist
--order by b.peak_position asc