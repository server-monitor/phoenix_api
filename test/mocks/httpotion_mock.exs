
# ... not needed apparently, warnings show up if you override this.
# defmodule HTTPotion.Response do
#   defstruct body: nil, headers: nil, status_code: nil
# end

# defmodule HTTPotion.Headers do
#   defstruct hdrs: nil
# end

defmodule HTTPotionMock do
  # # URL produced by..
  # @valid_attrs %{
  #   endpoint: "/la-fullstack/events",
  #   # endpoint: "/LearnTeachCode/events",
  #   query: "status=past&desc=true"
  # }
  @api_key Application.fetch_env!(:phoenix_api, :secret) |> Keyword.fetch!(:key)
  @url (
    "https://api.meetup.com/la-fullstack/events?desc=true&" <>
    "key=#{@api_key}&omit=description%2Chow_to_find_us&" <>
    "page=200&sign=true&status=past"
  )

  def get(@url) do
    %HTTPotion.Response{
      body: "[{\"created\":1484015168000,\"duration\":10800000,\"id\":\"236808643\",\"name\":\"Fullstack Open Source ⚡ Downtown Edition\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1484188200000,\"updated\":1484201048000,\"utc_offset\":-28800000,\"waitlist_count\":0,\"yes_rsvp_count\":14,\"venue\":{\"id\":24801714,\"name\":\"8th Light - DTLA\",\"lat\":0.0,\"lon\":0.0,\"repinned\":false,\"address_1\":\"241 South Figueroa St. Suite 240\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/236808643/\",\"visibility\":\"public\"},{\"created\":1476127250000,\"duration\":9000000,\"id\":\"dfjqbmyvqbkb\",\"name\":\"Fullstack Open Source ⚡️ Westside Edition\",\"status\":\"past\",\"time\":1481164200000,\"updated\":1481260110000,\"utc_offset\":-28800000,\"waitlist_count\":0,\"yes_rsvp_count\":23,\"venue\":{\"id\":24826355,\"name\":\"Pivotal\",\"lat\":34.015716552734375,\"lon\":-118.49747467041016,\"repinned\":false,\"address_1\":\"1333 Second Street Suite 200\",\"city\":\"Santa Monica\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/235304044/\",\"visibility\":\"public\"},{\"created\":1475697038000,\"duration\":10800000,\"id\":\"zcbgbmyvpbnc\",\"name\":\"Fullstack Open Source ⚡ Downtown Edition\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1480559400000,\"updated\":1480571868000,\"utc_offset\":-28800000,\"waitlist_count\":0,\"yes_rsvp_count\":26,\"venue\":{\"id\":24801714,\"name\":\"8th Light - DTLA\",\"lat\":0.0,\"lon\":0.0,\"repinned\":false,\"address_1\":\"241 South Figueroa St. Suite 240\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/235303964/\",\"visibility\":\"public\"},{\"created\":1470204742000,\"duration\":10800000,\"id\":\"zcbgbmyvpbvb\",\"name\":\"Fullstack Open Source ⚡ Downtown Edition\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1479349800000,\"updated\":1479362378000,\"utc_offset\":-28800000,\"waitlist_count\":0,\"yes_rsvp_count\":24,\"venue\":{\"id\":24801714,\"name\":\"8th Light - DTLA\",\"lat\":0.0,\"lon\":0.0,\"repinned\":false,\"address_1\":\"241 South Figueroa St. Suite 240\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/234288868/\",\"visibility\":\"public\"},{\"created\":1476127250000,\"duration\":9000000,\"id\":\"dfjqbmyvpbmb\",\"name\":\"Fullstack Open Source ⚡️ Westside Edition\",\"status\":\"past\",\"time\":1478745000000,\"updated\":1478764125000,\"utc_offset\":-28800000,\"waitlist_count\":0,\"yes_rsvp_count\":25,\"venue\":{\"id\":24826355,\"name\":\"Pivotal\",\"lat\":34.015716552734375,\"lon\":-118.49747467041016,\"repinned\":false,\"address_1\":\"1333 Second Street Suite 200\",\"city\":\"Santa Monica\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/234936848/\",\"visibility\":\"public\"},{\"created\":1475697038000,\"duration\":10800000,\"id\":\"zcbgbmyvpbdb\",\"name\":\"Fullstack Open Source ⚡ Downtown Edition\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1478136600000,\"updated\":1478148291000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":23,\"venue\":{\"id\":24801714,\"name\":\"8th Light - DTLA\",\"lat\":0.0,\"lon\":0.0,\"repinned\":false,\"address_1\":\"241 South Figueroa St. Suite 240\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/234711817/\",\"visibility\":\"public\"},{\"created\":1475803511000,\"duration\":9000000,\"id\":\"xckjbmyvnbjc\",\"name\":\"Fullstack Open Source ⚡️ Westside Edition\",\"status\":\"past\",\"time\":1477531800000,\"updated\":1477542336000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":28,\"venue\":{\"id\":24826355,\"name\":\"Pivotal\",\"lat\":34.015716552734375,\"lon\":-118.49747467041016,\"repinned\":false,\"address_1\":\"1333 Second Street Suite 200\",\"city\":\"Santa Monica\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/234696259/\",\"visibility\":\"public\"},{\"created\":1470204742000,\"duration\":10800000,\"id\":\"zcbgbmyvnbzb\",\"name\":\"Fullstack Open Source ⚡ Downtown Edition\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1476927000000,\"updated\":1477020408000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":25,\"venue\":{\"id\":24801714,\"name\":\"8th Light - DTLA\",\"lat\":0.0,\"lon\":0.0,\"repinned\":false,\"address_1\":\"241 South Figueroa St. Suite 240\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/233276413/\",\"visibility\":\"public\"},{\"created\":1475655650000,\"id\":\"234637657\",\"name\":\"Fullstack⚡️ Open Source | Hacktober Edition\",\"rsvp_limit\":25,\"status\":\"past\",\"time\":1476640800000,\"updated\":1476727408000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":11,\"venue\":{\"id\":23947053,\"name\":\"Pro Desk Space\",\"lat\":33.871337890625,\"lon\":-117.92388916015625,\"repinned\":false,\"address_1\":\"112 E. Amerige Avenue\",\"city\":\"Fullerton\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/234637657/\",\"visibility\":\"public\"},{\"created\":1475602393000,\"duration\":9000000,\"id\":\"xckjbmyvnbqb\",\"name\":\"Fullstack Open Source ⚡️ Westside Edition\",\"status\":\"past\",\"time\":1476322200000,\"updated\":1476333085000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":30,\"venue\":{\"id\":24826355,\"name\":\"Pivotal\",\"lat\":34.015716552734375,\"lon\":-118.49747467041016,\"repinned\":false,\"address_1\":\"1333 Second Street Suite 200\",\"city\":\"Santa Monica\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/234620974/\",\"visibility\":\"public\"},{\"created\":1470204742000,\"duration\":10800000,\"id\":\"zcbgbmyvnbhb\",\"name\":\"Fullstack Open Source ⚡\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1475717400000,\"updated\":1475775342000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":26,\"venue\":{\"id\":24801714,\"name\":\"8th Light - DTLA\",\"lat\":0.0,\"lon\":0.0,\"repinned\":false,\"address_1\":\"241 South Figueroa St. Suite 240\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/233276408/\",\"visibility\":\"public\"},{\"created\":1470204742000,\"duration\":10800000,\"id\":\"vmtswlyvmbcc\",\"name\":\"Open Source ⚡\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1474507800000,\"updated\":1474519819000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":26,\"venue\":{\"id\":24801714,\"name\":\"8th Light - DTLA\",\"lat\":0.0,\"lon\":0.0,\"repinned\":false,\"address_1\":\"241 South Figueroa St. Suite 240\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/233276393/\",\"visibility\":\"public\"},{\"created\":1470204742000,\"duration\":10800000,\"id\":\"vmtswlyvmbkb\",\"name\":\"Open Source ⚡\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1473298200000,\"updated\":1473310478000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":19,\"venue\":{\"id\":19301302,\"name\":\"MaxCDN\",\"lat\":34.133609771728516,\"lon\":-118.35842895507812,\"repinned\":false,\"address_1\":\"3575 Cahuenga Blvd. West, Suite 350\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/233276392/\",\"visibility\":\"public\"},{\"created\":1470204742000,\"duration\":10800000,\"id\":\"vmtswlyvlbgc\",\"name\":\"Open Source ⚡\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1472088600000,\"updated\":1472100248000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":26,\"venue\":{\"id\":19301302,\"name\":\"MaxCDN\",\"lat\":34.133609771728516,\"lon\":-118.35842895507812,\"repinned\":false,\"address_1\":\"3575 Cahuenga Blvd. West, Suite 350\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/233224552/\",\"visibility\":\"public\"},{\"created\":1470204742000,\"duration\":10800000,\"id\":\"vmtswlyvlbnb\",\"name\":\"Open Source ⚡ Pair Programming\",\"rsvp_limit\":26,\"status\":\"past\",\"time\":1470879000000,\"updated\":1471022672000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":20,\"venue\":{\"id\":19301302,\"name\":\"MaxCDN\",\"lat\":34.133609771728516,\"lon\":-118.35842895507812,\"repinned\":false,\"address_1\":\"3575 Cahuenga Blvd. West, Suite 350\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/233092971/\",\"visibility\":\"public\"},{\"created\":1465000849000,\"duration\":10800000,\"id\":\"hnsxtlyvkbjc\",\"name\":\"Open Source Pair Programming ⚡\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1469669400000,\"updated\":1470122352000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":19,\"venue\":{\"id\":19301302,\"name\":\"MaxCDN\",\"lat\":34.133609771728516,\"lon\":-118.35842895507812,\"repinned\":false,\"address_1\":\"3575 Cahuenga Blvd. West, Suite 350\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/232563162/\",\"visibility\":\"public\"},{\"created\":1468276545000,\"id\":\"232548531\",\"name\":\"Open Source Pair Programing ⚡\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1468459800000,\"updated\":1468511118000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":8,\"venue\":{\"id\":19301302,\"name\":\"MaxCDN\",\"lat\":34.133609771728516,\"lon\":-118.35842895507812,\"repinned\":false,\"address_1\":\"3575 Cahuenga Blvd. West, Suite 350\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/232548531/\",\"visibility\":\"public\"},{\"created\":1462419468000,\"id\":\"hnsxtlyvkbrb\",\"name\":\"Open Source Pair Programming ⚡\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1468373400000,\"updated\":1468386335000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":8,\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/231441272/\",\"visibility\":\"public\"},{\"created\":1465000849000,\"id\":\"hnsxtlyvkbqb\",\"name\":\"Open Source Pair Programming ⚡\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1468373400000,\"updated\":1468386344000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":3,\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/232048772/\",\"visibility\":\"public\"},{\"created\":1458315484000,\"id\":\"dqjbvlyvjbmc\",\"name\":\"Open Source Pairing ⚡\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1467163800000,\"updated\":1467210295000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":20,\"venue\":{\"id\":24599922,\"name\":\"IndieDesk\",\"lat\":34.05282974243164,\"lon\":-118.25190734863281,\"repinned\":false,\"address_1\":\"333 S Grand Ave #450\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/229984214/\",\"visibility\":\"public\"},{\"created\":1462419468000,\"id\":\"lsmctlyvjbcb\",\"name\":\"Pairing ⚡\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1464831000000,\"updated\":1464843159000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":14,\"venue\":{\"id\":24435232,\"name\":\"YoShirt\",\"lat\":34.0350341796875,\"lon\":-118.22252655029297,\"repinned\":false,\"address_1\":\"2301 E 7th St #E200\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"90023\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/231237667/\",\"visibility\":\"public\"},{\"created\":1458315484000,\"id\":\"lsmctlyvhbxb\",\"name\":\"Pairing ⚡\",\"rsvp_limit\":24,\"status\":\"past\",\"time\":1463621400000,\"updated\":1464335636000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":20,\"venue\":{\"id\":24435232,\"name\":\"YoShirt\",\"lat\":34.0350341796875,\"lon\":-118.22252655029297,\"repinned\":false,\"address_1\":\"2301 E 7th St #E200\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"90023\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/230881852/\",\"visibility\":\"public\"},{\"created\":1458315484000,\"id\":\"xcmqrlyvhbgb\",\"name\":\"Pairing ⚡\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1462411800000,\"updated\":1463108289000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":16,\"venue\":{\"id\":24435232,\"name\":\"YoShirt\",\"lat\":34.0350341796875,\"lon\":-118.22252655029297,\"repinned\":false,\"address_1\":\"2301 E 7th St #E200\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"90023\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/230299610/\",\"visibility\":\"public\"},{\"created\":1458315484000,\"id\":\"xcmqrlyvgbbc\",\"name\":\"Pairing ⚡\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1461202200000,\"updated\":1461226746000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":19,\"venue\":{\"id\":24435232,\"name\":\"YoShirt\",\"lat\":34.0350341796875,\"lon\":-118.22252655029297,\"repinned\":false,\"address_1\":\"2301 E 7th St #E200\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"90023\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/229972170/\",\"visibility\":\"public\"},{\"created\":1458315484000,\"id\":\"xcmqrlyvgbjb\",\"name\":\"Pairing 🙌\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1459992600000,\"updated\":1460132742000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":15,\"venue\":{\"id\":24435232,\"name\":\"YoShirt\",\"lat\":34.0350341796875,\"lon\":-118.22252655029297,\"repinned\":false,\"address_1\":\"2301 E 7th St #E200\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"90023\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/229789292/\",\"manual_attendance_count\":15,\"visibility\":\"public\"},{\"created\":1458315484000,\"id\":\"xcmqrlyvfbfc\",\"name\":\"Pairing\",\"rsvp_limit\":20,\"status\":\"past\",\"time\":1458783000000,\"updated\":1458847050000,\"utc_offset\":-25200000,\"waitlist_count\":0,\"yes_rsvp_count\":6,\"venue\":{\"id\":24435232,\"name\":\"YoShirt\",\"lat\":34.0350341796875,\"lon\":-118.22252655029297,\"repinned\":false,\"address_1\":\"2301 E 7th St #E200\",\"city\":\"Los Angeles\",\"country\":\"us\",\"localized_country_name\":\"USA\",\"zip\":\"90023\",\"state\":\"CA\"},\"group\":{\"created\":1458312925000,\"name\":\"Fullstack ⚡\",\"id\":19726066,\"join_mode\":\"open\",\"lat\":34.029998779296875,\"lon\":-118.19999694824219,\"urlname\":\"la-fullstack\",\"who\":\"Coders\"},\"link\":\"https://www.meetup.com/la-fullstack/events/229692019/\",\"manual_attendance_count\":10,\"visibility\":\"public\"}]",
      headers: %HTTPotion.Headers{
        hdrs: %{
          "cf-ray" => "323277713ed053c0-LAX",
          "connection" => "keep-alive",
          "content-type" => "application/json;charset=utf-8",
          "date" => "Wed, 18 Jan 2017 13:41:48 GMT",
          "etag" => "W/\"43de8f2c8ed4b02282e606cfaf565906\"",
          "server" => "cloudflare-nginx",
          "set-cookie" => "__cfduid=dd930aa677f3f5d82421179856fde34941484746908; expires=Thu, 18-Jan-18 13:41:48 GMT; path=/; domain=.meetup.com; HttpOnly",
          "transfer-encoding" => "chunked",
          "vary" => "Accept-Encoding,User-Agent,Accept-Language",
          "x-accepted-oauth-scopes" => "basic",
          "x-meetup-request-id" => "7ba3eaad-cbfb-4c7d-9d18-b4e165ee82a3",
          "x-meetup-server" => "api14",
          "x-meetup-signed-url" => "https://api.meetup.com/la-fullstack/events?desc=true&group_urlname=&page=200&sig_id=201611406&omit=description%2Chow_to_find_us&status=past&sig=0856bd00d3a6160f3fbe53a5ec69eddb44f132fb",
          "x-oauth-scopes" => "basic", "x-ratelimit-limit" => "30",
          "x-ratelimit-remaining" => "29", "x-ratelimit-reset" => "10",
          "x-total-count" => "26"
        }
      },

      status_code: 200
    }
  end

  def head(@url) do
    %HTTPotion.Response{
      body: "",
      headers: %HTTPotion.Headers{
        hdrs: %{
          "cf-ray" => "32320bac1ae62222-LAX",
          "connection" => "keep-alive",
          "content-type" => "application/json;charset=utf-8",
          "date" => "Wed, 18 Jan 2017 12:28:14 GMT",
          "etag" => "W/\"43de8f2c8ed4b02282e606cfaf565906\"",
          "server" => "cloudflare-nginx",
          "set-cookie" => "__cfduid=d6880c4620e8689be94374698f1f27f8d1484742494; expires=Thu, 18-Jan-18 12:28:14 GMT; path=/; domain=.meetup.com; HttpOnly",
          "vary" => "Accept-Encoding,User-Agent,Accept-Language",
          "x-accepted-oauth-scopes" => "basic",
          "x-meetup-request-id" => "c26b421d-a28d-483b-a4b8-d3c76180ad5a",
          "x-meetup-server" => "api5",
          "x-meetup-signed-url" => "https://api.meetup.com/la-fullstack/events?desc=true&group_urlname=&page=200&sig_id=201611406&omit=description%2Chow_to_find_us&status=past&sig=0856bd00d3a6160f3fbe53a5ec69eddb44f132fb",
          "x-oauth-scopes" => "basic", "x-ratelimit-limit" => "30",
          "x-ratelimit-remaining" => "29", "x-ratelimit-reset" => "10",
          "x-total-count" => "26"
        }
      },

      status_code: 200
    }
  end
end
