require "http"

module Cream
    module ICSGOServers
    extend self
        def getgameserversstatus(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ICSGOServers_730/GetGameServersStatus/v0001?format=json&key=#{apikey}").body
        end

    end

    module ICSGOTournaments
    extend self
        def gettournamentfantasylineup(event : UInt32, steamid : UInt64, steamidkey : String, )
            HTTP::Client.get("https://api.steampowered.com/ICSGOTournaments_730/GetTournamentFantasyLineup/v0001?event=#{event}&steamid=#{steamid}&steamidkey=#{steamidkey}&format=json&key=#{apikey}").body
        end

        def gettournamentitems(event : UInt32, steamid : UInt64, steamidkey : String, )
            HTTP::Client.get("https://api.steampowered.com/ICSGOTournaments_730/GetTournamentItems/v0001?event=#{event}&steamid=#{steamid}&steamidkey=#{steamidkey}&format=json&key=#{apikey}").body
        end

        def gettournamentlayout(event : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ICSGOTournaments_730/GetTournamentLayout/v0001?event=#{event}&format=json&key=#{apikey}").body
        end

        def gettournamentpredictions(event : UInt32, steamid : UInt64, steamidkey : String, )
            HTTP::Client.get("https://api.steampowered.com/ICSGOTournaments_730/GetTournamentPredictions/v0001?event=#{event}&steamid=#{steamid}&steamidkey=#{steamidkey}&format=json&key=#{apikey}").body
        end

        def uploadtournamentfantasylineup(event : UInt32, steamid : UInt64, steamidkey : String, sectionid : UInt32, pickid0 : UInt32, itemid0 : UInt64, pickid1 : UInt32, itemid1 : UInt64, pickid2 : UInt32, itemid2 : UInt64, pickid3 : UInt32, itemid3 : UInt64, pickid4 : UInt32, itemid4 : UInt64, )
            HTTP::Client.post("https://api.steampowered.com/ICSGOTournaments_730/UploadTournamentFantasyLineup/v0001?event=#{event}&steamid=#{steamid}&steamidkey=#{steamidkey}&sectionid=#{sectionid}&pickid0=#{pickid0}&itemid0=#{itemid0}&pickid1=#{pickid1}&itemid1=#{itemid1}&pickid2=#{pickid2}&itemid2=#{itemid2}&pickid3=#{pickid3}&itemid3=#{itemid3}&pickid4=#{pickid4}&itemid4=#{itemid4}&format=json&key=#{apikey}").body
        end

        def uploadtournamentpredictions(event : UInt32, steamid : UInt64, steamidkey : String, sectionid : UInt32, groupid : UInt32, index : UInt32, pickid : UInt32, itemid : UInt64, )
            HTTP::Client.post("https://api.steampowered.com/ICSGOTournaments_730/UploadTournamentPredictions/v0001?event=#{event}&steamid=#{steamid}&steamidkey=#{steamidkey}&sectionid=#{sectionid}&groupid=#{groupid}&index=#{index}&pickid=#{pickid}&itemid=#{itemid}&format=json&key=#{apikey}").body
        end

    end

    module IDOTA2Fantasy
    extend self
        def getfantasyplayerstats(fantasyLeagueID : UInt32, startTime : UInt32, endTime : UInt32, matchid : UInt64, seriesID : UInt32, playerAccountID : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Fantasy_570/GetFantasyPlayerStats/v0001?FantasyLeagueID=#{fantasyLeagueID}&StartTime=#{startTime}&EndTime=#{endTime}&matchid=#{matchid}&SeriesID=#{seriesID}&PlayerAccountID=#{playerAccountID}&format=json&key=#{apikey}").body
        end

        def getplayerofficialinfo(accountid : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Fantasy_570/GetPlayerOfficialInfo/v0001?accountid=#{accountid}&format=json&key=#{apikey}").body
        end

        def getproplayerlist(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Fantasy_570/GetProPlayerList/v0001?format=json&key=#{apikey}").body
        end

    end

    module IDOTA2MatchStats
    extend self
        def getrealtimestats(server_steam_id : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2MatchStats_570/GetRealtimeStats/v0001?server_steam_id=#{server_steam_id}&format=json&key=#{apikey}").body
        end

    end

    module IDOTA2Match
    extend self
        def getleaguelisting(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetLeagueListing/v0001?format=json&key=#{apikey}").body
        end

        def getliveleaguegames(league_id : UInt32, match_id : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetLiveLeagueGames/v0001?league_id=#{league_id}&match_id=#{match_id}&format=json&key=#{apikey}").body
        end

        def getmatchdetails(match_id : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetMatchDetails/v0001?match_id=#{match_id}&format=json&key=#{apikey}").body
        end

        def getmatchhistory(hero_id : UInt32, game_mode : UInt32, skill : UInt32, min_players : String, account_id : String, league_id : String, start_at_match_id : UInt64, matches_requested : String, tournament_games_only : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/v0001?hero_id=#{hero_id}&game_mode=#{game_mode}&skill=#{skill}&min_players=#{min_players}&account_id=#{account_id}&league_id=#{league_id}&start_at_match_id=#{start_at_match_id}&matches_requested=#{matches_requested}&tournament_games_only=#{tournament_games_only}&format=json&key=#{apikey}").body
        end

        def getmatchhistorybysequencenum(start_at_match_seq_num : UInt64, matches_requested : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetMatchHistoryBySequenceNum/v0001?start_at_match_seq_num=#{start_at_match_seq_num}&matches_requested=#{matches_requested}&format=json&key=#{apikey}").body
        end

        def getscheduledleaguegames(date_min : UInt32, date_max : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetScheduledLeagueGames/v0001?date_min=#{date_min}&date_max=#{date_max}&format=json&key=#{apikey}").body
        end

        def getteaminfobyteamid(start_at_team_id : UInt64, teams_requested : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetTeamInfoByTeamID/v0001?start_at_team_id=#{start_at_team_id}&teams_requested=#{teams_requested}&format=json&key=#{apikey}").body
        end

        def gettoplivegame(partner : Int32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetTopLiveGame/v0001?partner=#{partner}&format=json&key=#{apikey}").body
        end

        def gettopweekendtourneygames(partner : Int32, home_division : Int32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetTopWeekendTourneyGames/v0001?partner=#{partner}&home_division=#{home_division}&format=json&key=#{apikey}").body
        end

        def gettournamentplayerstats(account_id : String, league_id : String, hero_id : String, time_frame : String, match_id : UInt64, phase_id : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Match_570/GetTournamentPlayerStats/v0002?account_id=#{account_id}&league_id=#{league_id}&hero_id=#{hero_id}&time_frame=#{time_frame}&match_id=#{match_id}&phase_id=#{phase_id}&format=json&key=#{apikey}").body
        end

    end

    module IDOTA2StreamSystem
    extend self
        def getbroadcasterinfo(broadcaster_steam_id : UInt64, league_id : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2StreamSystem_570/GetBroadcasterInfo/v0001?broadcaster_steam_id=#{broadcaster_steam_id}&league_id=#{league_id}&format=json&key=#{apikey}").body
        end

    end

    module IDOTA2Teams
    extend self
        def getteaminfo(team_id : UInt32, league_id : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Teams_570/GetTeamInfo/v0001?team_id=#{team_id}&league_id=#{league_id}&format=json&key=#{apikey}").body
        end

    end

    module IDOTA2Ticket
    extend self
        def claimbadgereward(eventid : UInt32, badgeID : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Ticket_570/ClaimBadgeReward/v0001?eventid=#{eventid}&BadgeID=#{badgeID}&format=json&key=#{apikey}").body
        end

        def getsteamidforbadgeid(badgeID : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Ticket_570/GetSteamIDForBadgeID/v0001?BadgeID=#{badgeID}&format=json&key=#{apikey}").body
        end

        def setsteamaccountpurchased(eventid : UInt32, steamid : UInt64, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/IDOTA2Ticket_570/SetSteamAccountPurchased/v0001?eventid=#{eventid}&steamid=#{steamid}&format=json&key=#{apikey}").body
        end

        def steamaccountvalidforevent(eventid : UInt32, steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IDOTA2Ticket_570/SteamAccountValidForEvent/v0001?eventid=#{eventid}&steamid=#{steamid}&format=json&key=#{apikey}").body
        end

    end

    module IEconDOTA2
    extend self
        def geteventstatsforaccount(eventid : UInt32, accountid : UInt32, language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconDOTA2_570/GetEventStatsForAccount/v0001?eventid=#{eventid}&accountid=#{accountid}&language=#{language}&format=json&key=#{apikey}").body
        end

        def getgameitems(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconDOTA2_570/GetGameItems/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

        def getheroes(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconDOTA2_570/GetHeroes/v0001?language=#{language}&itemizedonly=#{itemizedonly}&format=json&key=#{apikey}").body
        end

        def getitemiconpath(iconname : String, icontype : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconDOTA2_570/GetItemIconPath/v0001?iconname=#{iconname}&icontype=#{icontype}&format=json&key=#{apikey}").body
        end

        def getrarities(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconDOTA2_570/GetRarities/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

        def gettournamentprizepool(leagueid : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconDOTA2_570/GetTournamentPrizePool/v0001?leagueid=#{leagueid}&format=json&key=#{apikey}").body
        end

    end

    module IEconItems
    extend self
        def getplayeritems(steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_218620/GetPlayerItems/v0001?steamid=#{steamid}&format=json&key=#{apikey}").body
        end

    end

    module IEconItems
    extend self
        def getplayeritems(steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_221540/GetPlayerItems/v0001?steamid=#{steamid}&format=json&key=#{apikey}").body
        end

    end

    module IEconItems
    extend self
        def getplayeritems(steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_238460/GetPlayerItems/v0001?steamid=#{steamid}&format=json&key=#{apikey}").body
        end

    end

    module IEconItems
    extend self
        def getplayeritems(steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_440/GetPlayerItems/v0001?steamid=#{steamid}&format=json&key=#{apikey}").body
        end

        def getschema(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_440/GetSchema/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

        def getschemaurl(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_440/GetSchemaURL/v0001?format=json&key=#{apikey}").body
        end

        def getstoremetadata(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_440/GetStoreMetaData/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

        def getstorestatus(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_440/GetStoreStatus/v0001?format=json&key=#{apikey}").body
        end

    end

    module IEconItems
    extend self
        def getequippedplayeritems(steamid : UInt64, class_id : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_570/GetEquippedPlayerItems/v0001?steamid=#{steamid}&class_id=#{class_id}&format=json&key=#{apikey}").body
        end

        def getplayeritems(steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_570/GetPlayerItems/v0001?steamid=#{steamid}&format=json&key=#{apikey}").body
        end

        def getschema(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_570/GetSchema/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

        def getschemaurl(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_570/GetSchemaURL/v0001?format=json&key=#{apikey}").body
        end

        def getstoremetadata(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_570/GetStoreMetaData/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

    end

    module IEconItems
    extend self
        def getplayeritems(steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_620/GetPlayerItems/v0001?steamid=#{steamid}&format=json&key=#{apikey}").body
        end

        def getschema(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_620/GetSchema/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

    end

    module IEconItems
    extend self
        def getplayeritems(steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_730/GetPlayerItems/v0001?steamid=#{steamid}&format=json&key=#{apikey}").body
        end

        def getschema(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_730/GetSchema/v0002?language=#{language}&format=json&key=#{apikey}").body
        end

        def getschemaurl(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_730/GetSchemaURL/v0002?format=json&key=#{apikey}").body
        end

        def getstoremetadata(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_730/GetStoreMetaData/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

    end

    module IEconItems
    extend self
        def getplayeritems(steamid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_841/GetPlayerItems/v0001?steamid=#{steamid}&format=json&key=#{apikey}").body
        end

        def getschema(language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IEconItems_841/GetSchema/v0001?language=#{language}&format=json&key=#{apikey}").body
        end

    end

    module IGCVersion
    extend self
        def getclientversion(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IGCVersion_440/GetClientVersion/v0001?format=json&key=#{apikey}").body
        end

        def getserverversion(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IGCVersion_440/GetServerVersion/v0001?format=json&key=#{apikey}").body
        end

    end

    module IGCVersion
    extend self
        def getclientversion(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IGCVersion_570/GetClientVersion/v0001?format=json&key=#{apikey}").body
        end

        def getserverversion(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IGCVersion_570/GetServerVersion/v0001?format=json&key=#{apikey}").body
        end

    end

    module IGCVersion
    extend self
        def getserverversion(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IGCVersion_730/GetServerVersion/v0001?format=json&key=#{apikey}").body
        end

    end

    module IPortal2Leaderboards
    extend self
        def getbucketizeddata(leaderboardName : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IPortal2Leaderboards_620/GetBucketizedData/v0001?leaderboardName=#{leaderboardName}&format=json&key=#{apikey}").body
        end

    end

    module IPortal2Leaderboards
    extend self
        def getbucketizeddata(leaderboardName : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/IPortal2Leaderboards_841/GetBucketizedData/v0001?leaderboardName=#{leaderboardName}&format=json&key=#{apikey}").body
        end

    end

    module ISteamApps
    extend self
        def getapplist(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamApps/GetAppList/v0001?format=json&key=#{apikey}").body
        end

        def getapplist(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamApps/GetAppList/v0002?format=json&key=#{apikey}").body
        end

        def getserversataddress(addr : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamApps/GetServersAtAddress/v0001?addr=#{addr}&format=json&key=#{apikey}").body
        end

        def uptodatecheck(appid : UInt32, version : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamApps/UpToDateCheck/v0001?appid=#{appid}&version=#{version}&format=json&key=#{apikey}").body
        end

    end

    module ISteamBitPay
    extend self
        def bitpaypaymentnotification(apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ISteamBitPay/BitPayPaymentNotification/v0001?format=json&key=#{apikey}").body
        end

    end

    module ISteamCDN
    extend self
        def setclientfilters(key : String, cdnname : String, allowedipblocks : String, allowedasns : String, allowedipcountries : String, )
            HTTP::Client.post("https://api.steampowered.com/ISteamCDN/SetClientFilters/v0001?key=#{key}&cdnname=#{cdnname}&allowedipblocks=#{allowedipblocks}&allowedasns=#{allowedasns}&allowedipcountries=#{allowedipcountries}&format=json").body
        end

        def setperformancestats(key : String, cdnname : String, mbps_sent : UInt32, mbps_recv : UInt32, cpu_percent : UInt32, cache_hit_percent : UInt32, )
            HTTP::Client.post("https://api.steampowered.com/ISteamCDN/SetPerformanceStats/v0001?key=#{key}&cdnname=#{cdnname}&mbps_sent=#{mbps_sent}&mbps_recv=#{mbps_recv}&cpu_percent=#{cpu_percent}&cache_hit_percent=#{cache_hit_percent}&format=json").body
        end

    end

    module ISteamDirectory
    extend self
        def getcmlist(cellid : UInt32, maxcount : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamDirectory/GetCMList/v0001?cellid=#{cellid}&maxcount=#{maxcount}&format=json&key=#{apikey}").body
        end

    end

    module ISteamEconomy
    extend self
        def getassetclassinfo(appid : UInt32, language : String, class_count : UInt32, classid0 : UInt64, instanceid0 : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamEconomy/GetAssetClassInfo/v0001?appid=#{appid}&language=#{language}&class_count=#{class_count}&classid0=#{classid0}&instanceid0=#{instanceid0}&format=json&key=#{apikey}").body
        end

        def getassetprices(appid : UInt32, currency : String, language : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamEconomy/GetAssetPrices/v0001?appid=#{appid}&currency=#{currency}&language=#{language}&format=json&key=#{apikey}").body
        end

    end

    module ISteamEnvoy
    extend self
        def paymentoutnotification(apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ISteamEnvoy/PaymentOutNotification/v0001?format=json&key=#{apikey}").body
        end

        def paymentoutreversalnotification(apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ISteamEnvoy/PaymentOutReversalNotification/v0001?format=json&key=#{apikey}").body
        end

    end

    module ISteamNews
    extend self
        def getnewsforapp(appid : UInt32, maxlength : UInt32, enddate : UInt32, count : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamNews/GetNewsForApp/v0001?appid=#{appid}&maxlength=#{maxlength}&enddate=#{enddate}&count=#{count}&format=json&key=#{apikey}").body
        end

        def getnewsforapp(appid : UInt32, maxlength : UInt32, enddate : UInt32, count : UInt32, feeds : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamNews/GetNewsForApp/v0002?appid=#{appid}&maxlength=#{maxlength}&enddate=#{enddate}&count=#{count}&feeds=#{feeds}&format=json&key=#{apikey}").body
        end

    end

    module ISteamPayPalPaymentsHub
    extend self
        def paypalpaymentshubpaymentnotification(apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ISteamPayPalPaymentsHub/PayPalPaymentsHubPaymentNotification/v0001?format=json&key=#{apikey}").body
        end

    end

    module ISteamRemoteStorage
    extend self
        def getcollectiondetails(collectioncount : UInt32, publishedfileids : UInt64, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ISteamRemoteStorage/GetCollectionDetails/v0001?collectioncount=#{collectioncount}&publishedfileids=#{publishedfileids}&format=json&key=#{apikey}").body
        end

        def getpublishedfiledetails(itemcount : UInt32, publishedfileids : UInt64, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ISteamRemoteStorage/GetPublishedFileDetails/v0001?itemcount=#{itemcount}&publishedfileids=#{publishedfileids}&format=json&key=#{apikey}").body
        end

        def getugcfiledetails(steamid : UInt64, ugcid : UInt64, appid : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamRemoteStorage/GetUGCFileDetails/v0001?steamid=#{steamid}&ugcid=#{ugcid}&appid=#{appid}&format=json&key=#{apikey}").body
        end

    end

    module ISteamUser
    extend self
        def getfriendlist(key : String, steamid : UInt64, relationship : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUser/GetFriendList/v0001?key=#{key}&steamid=#{steamid}&relationship=#{relationship}&format=json").body
        end

        def getplayerbans(key : String, steamids : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUser/GetPlayerBans/v0001?key=#{key}&steamids=#{steamids}&format=json").body
        end

        def getplayersummaries(key : String, steamids : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0001?key=#{key}&steamids=#{steamids}&format=json").body
        end

        def getplayersummaries(key : String, steamids : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002?key=#{key}&steamids=#{steamids}&format=json").body
        end

        def getusergrouplist(key : String, steamid : UInt64, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUser/GetUserGroupList/v0001?key=#{key}&steamid=#{steamid}&format=json").body
        end

        def resolvevanityurl(key : String, vanityurl : String, url_type : Int32, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUser/ResolveVanityURL/v0001?key=#{key}&vanityurl=#{vanityurl}&url_type=#{url_type}&format=json").body
        end

    end

    module ISteamUserAuth
    extend self
        def authenticateuser(steamid : UInt64, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ISteamUserAuth/AuthenticateUser/v0001?steamid=#{steamid}&sessionkey=#{sessionkey}&encrypted_loginkey=#{encrypted_loginkey}&format=json&key=#{apikey}").body
        end

        def authenticateuserticket(key : String, appid : UInt32, ticket : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUserAuth/AuthenticateUserTicket/v0001?key=#{key}&appid=#{appid}&ticket=#{ticket}&format=json").body
        end

    end

    module ISteamUserOAuth
    extend self
        def gettokendetails(access_token : String, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamUserOAuth/GetTokenDetails/v0001?access_token=#{access_token}&format=json&key=#{apikey}").body
        end

    end

    module ISteamUserStats
    extend self
        def getglobalachievementpercentagesforapp(gameid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetGlobalAchievementPercentagesForApp/v0001?gameid=#{gameid}&format=json&key=#{apikey}").body
        end

        def getglobalachievementpercentagesforapp(gameid : UInt64, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetGlobalAchievementPercentagesForApp/v0002?gameid=#{gameid}&format=json&key=#{apikey}").body
        end

        def getglobalstatsforgame(appid : UInt32, count : UInt32, name : String, startdate : UInt32, enddate : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetGlobalStatsForGame/v0001?appid=#{appid}&count=#{count}&name=#{name}&startdate=#{startdate}&enddate=#{enddate}&format=json&key=#{apikey}").body
        end

        def getnumberofcurrentplayers(appid : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v0001?appid=#{appid}&format=json&key=#{apikey}").body
        end

        def getplayerachievements(key : String, steamid : UInt64, appid : UInt32, l : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetPlayerAchievements/v0001?key=#{key}&steamid=#{steamid}&appid=#{appid}&l=#{l}&format=json").body
        end

        def getschemaforgame(key : String, appid : UInt32, l : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetSchemaForGame/v0001?key=#{key}&appid=#{appid}&l=#{l}&format=json").body
        end

        def getschemaforgame(key : String, appid : UInt32, l : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetSchemaForGame/v0002?key=#{key}&appid=#{appid}&l=#{l}&format=json").body
        end

        def getuserstatsforgame(key : String, steamid : UInt64, appid : UInt32, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v0001?key=#{key}&steamid=#{steamid}&appid=#{appid}&format=json").body
        end

        def getuserstatsforgame(key : String, steamid : UInt64, appid : UInt32, )
            HTTP::Client.get("https://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v0002?key=#{key}&steamid=#{steamid}&appid=#{appid}&format=json").body
        end

    end

    module ISteamWebAPIUtil
    extend self
        def getserverinfo(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ISteamWebAPIUtil/GetServerInfo/v0001?format=json&key=#{apikey}").body
        end

        def getsupportedapilist(key : String, )
            HTTP::Client.get("https://api.steampowered.com/ISteamWebAPIUtil/GetSupportedAPIList/v0001?key=#{key}&format=json").body
        end

    end

    module ISteamWebUserPresenceOAuth
    extend self
        def pollstatus(steamid : String, umqid : UInt64, message : UInt32, pollid : UInt32, sectimeout : UInt32, secidletime : UInt32, use_accountids : UInt32, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ISteamWebUserPresenceOAuth/PollStatus/v0001?steamid=#{steamid}&umqid=#{umqid}&message=#{message}&pollid=#{pollid}&sectimeout=#{sectimeout}&secidletime=#{secidletime}&use_accountids=#{use_accountids}&format=json&key=#{apikey}").body
        end

    end

    module ITFItems
    extend self
        def getgoldenwrenches(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ITFItems_440/GetGoldenWrenches/v0002?format=json&key=#{apikey}").body
        end

    end

    module ITFPromos
    extend self
        def getitemid(steamid : UInt64, promoid : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ITFPromos_440/GetItemID/v0001?steamid=#{steamid}&promoid=#{promoid}&format=json&key=#{apikey}").body
        end

        def grantitem(steamid : UInt64, promoid : UInt32, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ITFPromos_440/GrantItem/v0001?steamid=#{steamid}&promoid=#{promoid}&format=json&key=#{apikey}").body
        end

    end

    module ITFPromos
    extend self
        def getitemid(steamid : UInt64, promoid : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ITFPromos_570/GetItemID/v0001?steamid=#{steamid}&promoid=#{promoid}&format=json&key=#{apikey}").body
        end

        def grantitem(steamid : UInt64, promoid : UInt32, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ITFPromos_570/GrantItem/v0001?steamid=#{steamid}&promoid=#{promoid}&format=json&key=#{apikey}").body
        end

    end

    module ITFPromos
    extend self
        def getitemid(steamid : UInt64, promoID : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ITFPromos_620/GetItemID/v0001?steamid=#{steamid}&PromoID=#{promoID}&format=json&key=#{apikey}").body
        end

        def grantitem(steamid : UInt64, promoID : UInt32, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ITFPromos_620/GrantItem/v0001?steamid=#{steamid}&PromoID=#{promoID}&format=json&key=#{apikey}").body
        end

    end

    module ITFPromos
    extend self
        def getitemid(steamid : UInt64, promoID : UInt32, apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ITFPromos_841/GetItemID/v0001?steamid=#{steamid}&PromoID=#{promoID}&format=json&key=#{apikey}").body
        end

        def grantitem(steamid : UInt64, promoID : UInt32, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/ITFPromos_841/GrantItem/v0001?steamid=#{steamid}&PromoID=#{promoID}&format=json&key=#{apikey}").body
        end

    end

    module ITFSystem
    extend self
        def getworldstatus(apikey : String)
            HTTP::Client.get("https://api.steampowered.com/ITFSystem_440/GetWorldStatus/v0001?format=json&key=#{apikey}").body
        end

    end

    module IGameServersService
    extend self
        def getaccountlist(key : String, )
            HTTP::Client.get("https://api.steampowered.com/IGameServersService/GetAccountList/v0001?key=#{key}&format=json").body
        end

        def createaccount(key : String, appid : UInt32, memo : String, )
            HTTP::Client.post("https://api.steampowered.com/IGameServersService/CreateAccount/v0001?key=#{key}&appid=#{appid}&memo=#{memo}&format=json").body
        end

        def setmemo(key : String, steamid : UInt64, memo : String, )
            HTTP::Client.post("https://api.steampowered.com/IGameServersService/SetMemo/v0001?key=#{key}&steamid=#{steamid}&memo=#{memo}&format=json").body
        end

        def resetlogintoken(key : String, steamid : UInt64, )
            HTTP::Client.post("https://api.steampowered.com/IGameServersService/ResetLoginToken/v0001?key=#{key}&steamid=#{steamid}&format=json").body
        end

        def deleteaccount(key : String, steamid : UInt64, )
            HTTP::Client.post("https://api.steampowered.com/IGameServersService/DeleteAccount/v0001?key=#{key}&steamid=#{steamid}&format=json").body
        end

        def getaccountpublicinfo(key : String, steamid : UInt64, )
            HTTP::Client.get("https://api.steampowered.com/IGameServersService/GetAccountPublicInfo/v0001?key=#{key}&steamid=#{steamid}&format=json").body
        end

        def querylogintoken(key : String, login_token : String, )
            HTTP::Client.get("https://api.steampowered.com/IGameServersService/QueryLoginToken/v0001?key=#{key}&login_token=#{login_token}&format=json").body
        end

        def getserversteamidsbyip(key : String, server_ips : String, )
            HTTP::Client.get("https://api.steampowered.com/IGameServersService/GetServerSteamIDsByIP/v0001?key=#{key}&server_ips=#{server_ips}&format=json").body
        end

        def getserveripsbysteamid(key : String, server_steamids : UInt64, )
            HTTP::Client.get("https://api.steampowered.com/IGameServersService/GetServerIPsBySteamID/v0001?key=#{key}&server_steamids=#{server_steamids}&format=json").body
        end

    end

    module IPublishedFileService
    extend self
        def queryfiles(key : String, query_type : UInt32, page : UInt32, numperpage : UInt32, creator_appid : UInt32, appid : UInt32, requiredtags : String, excludedtags : String, required_flags : String, omitted_flags : String, search_text : String, filetype : UInt32, child_publishedfileid : UInt64, days : UInt32, cache_max_age_seconds : UInt32, language : Int32, )
            HTTP::Client.get("https://api.steampowered.com/IPublishedFileService/QueryFiles/v0001?key=#{key}&query_type=#{query_type}&page=#{page}&numperpage=#{numperpage}&creator_appid=#{creator_appid}&appid=#{appid}&requiredtags=#{requiredtags}&excludedtags=#{excludedtags}&match_all_tags=#{match_all_tags}&required_flags=#{required_flags}&omitted_flags=#{omitted_flags}&search_text=#{search_text}&filetype=#{filetype}&child_publishedfileid=#{child_publishedfileid}&days=#{days}&include_recent_votes_only=#{include_recent_votes_only}&cache_max_age_seconds=#{cache_max_age_seconds}&language=#{language}&required_kv_tags=#{required_kv_tags}&totalonly=#{totalonly}&ids_only=#{ids_only}&return_vote_data=#{return_vote_data}&return_tags=#{return_tags}&return_kv_tags=#{return_kv_tags}&return_previews=#{return_previews}&return_children=#{return_children}&return_short_description=#{return_short_description}&return_for_sale_data=#{return_for_sale_data}&return_metadata=#{return_metadata}&format=json").body
        end

    end

    module IPlayerService
    extend self
        def recordofflineplaytime(steamid : UInt64, ticket : String, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/IPlayerService/RecordOfflinePlaytime/v0001?steamid=#{steamid}&ticket=#{ticket}&play_sessions=#{play_sessions}&format=json&key=#{apikey}").body
        end

        def getrecentlyplayedgames(key : String, steamid : UInt64, count : UInt32, )
            HTTP::Client.get("https://api.steampowered.com/IPlayerService/GetRecentlyPlayedGames/v0001?key=#{key}&steamid=#{steamid}&count=#{count}&format=json").body
        end

        def getownedgames(key : String, steamid : UInt64, appids_filter : UInt32, )
            HTTP::Client.get("https://api.steampowered.com/IPlayerService/GetOwnedGames/v0001?key=#{key}&steamid=#{steamid}&include_appinfo=#{include_appinfo}&include_played_free_games=#{include_played_free_games}&appids_filter=#{appids_filter}&format=json").body
        end

        def getsteamlevel(key : String, steamid : UInt64, )
            HTTP::Client.get("https://api.steampowered.com/IPlayerService/GetSteamLevel/v0001?key=#{key}&steamid=#{steamid}&format=json").body
        end

        def getbadges(key : String, steamid : UInt64, )
            HTTP::Client.get("https://api.steampowered.com/IPlayerService/GetBadges/v0001?key=#{key}&steamid=#{steamid}&format=json").body
        end

        def getcommunitybadgeprogress(key : String, steamid : UInt64, badgeid : Int32, )
            HTTP::Client.get("https://api.steampowered.com/IPlayerService/GetCommunityBadgeProgress/v0001?key=#{key}&steamid=#{steamid}&badgeid=#{badgeid}&format=json").body
        end

        def isplayingsharedgame(key : String, steamid : UInt64, appid_playing : UInt32, )
            HTTP::Client.get("https://api.steampowered.com/IPlayerService/IsPlayingSharedGame/v0001?key=#{key}&steamid=#{steamid}&appid_playing=#{appid_playing}&format=json").body
        end

    end

    module IInventoryService
    extend self
        def getpricesheet(key : String, ecurrency : Int32, )
            HTTP::Client.get("https://api.steampowered.com/IInventoryService/GetPriceSheet/v0001?key=#{key}&ecurrency=#{ecurrency}&format=json").body
        end

    end

    module IEconService
    extend self
        def gettradehistory(key : String, max_trades : UInt32, start_after_time : UInt32, start_after_tradeid : UInt64, language : String, )
            HTTP::Client.get("https://api.steampowered.com/IEconService/GetTradeHistory/v0001?key=#{key}&max_trades=#{max_trades}&start_after_time=#{start_after_time}&start_after_tradeid=#{start_after_tradeid}&navigating_back=#{navigating_back}&get_descriptions=#{get_descriptions}&language=#{language}&include_failed=#{include_failed}&include_total=#{include_total}&format=json").body
        end

        def gettradeoffers(key : String, language : String, time_historical_cutoff : UInt32, )
            HTTP::Client.get("https://api.steampowered.com/IEconService/GetTradeOffers/v0001?key=#{key}&get_sent_offers=#{get_sent_offers}&get_received_offers=#{get_received_offers}&get_descriptions=#{get_descriptions}&language=#{language}&active_only=#{active_only}&historical_only=#{historical_only}&time_historical_cutoff=#{time_historical_cutoff}&format=json").body
        end

        def gettradeoffer(key : String, tradeofferid : UInt64, language : String, )
            HTTP::Client.get("https://api.steampowered.com/IEconService/GetTradeOffer/v0001?key=#{key}&tradeofferid=#{tradeofferid}&language=#{language}&format=json").body
        end

        def gettradeofferssummary(key : String, time_last_visit : UInt32, )
            HTTP::Client.get("https://api.steampowered.com/IEconService/GetTradeOffersSummary/v0001?key=#{key}&time_last_visit=#{time_last_visit}&format=json").body
        end

        def declinetradeoffer(key : String, tradeofferid : UInt64, )
            HTTP::Client.post("https://api.steampowered.com/IEconService/DeclineTradeOffer/v0001?key=#{key}&tradeofferid=#{tradeofferid}&format=json").body
        end

        def canceltradeoffer(key : String, tradeofferid : UInt64, )
            HTTP::Client.post("https://api.steampowered.com/IEconService/CancelTradeOffer/v0001?key=#{key}&tradeofferid=#{tradeofferid}&format=json").body
        end

    end

    module ICheatReportingService
    extend self
        def reportcheatdata(key : String, steamid : UInt64, appid : UInt32, pathandfilename : String, webcheaturl : String, time_now : UInt64, time_started : UInt64, time_stopped : UInt64, cheatname : String, game_process_id : UInt32, cheat_process_id : UInt32, cheat_param_1 : UInt64, cheat_param_2 : UInt64, )
            HTTP::Client.post("https://api.steampowered.com/ICheatReportingService/ReportCheatData/v0001?key=#{key}&steamid=#{steamid}&appid=#{appid}&pathandfilename=#{pathandfilename}&webcheaturl=#{webcheaturl}&time_now=#{time_now}&time_started=#{time_started}&time_stopped=#{time_stopped}&cheatname=#{cheatname}&game_process_id=#{game_process_id}&cheat_process_id=#{cheat_process_id}&cheat_param_1=#{cheat_param_1}&cheat_param_2=#{cheat_param_2}&format=json").body
        end

    end

    module IAccountRecoveryService
    extend self
        def reportaccountrecoverydata(loginuser_list : String, install_config : String, shasentryfile : String, machineid : String, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/IAccountRecoveryService/ReportAccountRecoveryData/v0001?loginuser_list=#{loginuser_list}&install_config=#{install_config}&shasentryfile=#{shasentryfile}&machineid=#{machineid}&format=json&key=#{apikey}").body
        end

        def retrieveaccountrecoverydata(requesthandle : String, apikey : String)
            HTTP::Client.post("https://api.steampowered.com/IAccountRecoveryService/RetrieveAccountRecoveryData/v0001?requesthandle=#{requesthandle}&format=json&key=#{apikey}").body
        end

    end
end
