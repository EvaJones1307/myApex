RankHandler rk = new RankHandler();
string prize1 = rk.rankPrize(1);
system.debug('prize 1 is ' + prize1);

string prize2 = rk.rankPrize(3);
system.debug('prize 2 is ' + prize2);

string prize3 = rk.rankPrize(8);
system.debug('prize 3 is ' + prize3);

string prize4 = rk.rankPrize(12);
system.debug('prize 4 is ' + prize4);

RankHandler rh = new RankHandler();
string won = rh.rankPrize(2);
system.debug('for rank 2 prize is ' + won);
string won2 = rh.rankPrize(50);
system.debug(won2);
string won3 = rh.rankPrize(1);
system.debug(won3);


RankHandler r = new RankHandler();
system.debug(r.rankPrizeSwitch(1));
system.debug(r.rankPrizeSwitch(10));
system.debug(r.rankPrizeSwitch(100));


