-module(atomizer_test).

-include_lib("eunit/include/eunit.hrl").
-include("../src/atomizer.hrl").

-define(AtomFeedTest, "https://raw.githubusercontent.com/billstclair/atomizer/master/test/priv/feed.atom")

atomizer_test() ->
    Res = atomizer:parse_url(?AtomFeedTest),
    io:format("Res: ~p", [Res]),
    
    ?assertEqual(Res#feed.title, "Libraries for Android Devs"),
    ?assert(is_list(Res#feed.entries)).
