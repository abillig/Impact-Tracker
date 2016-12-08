Publication.connection
User.connection
Reporter.connection
Article.connection
Impact.connection
ImpactType.connection
ImpactRecord.connection
ReporterArticle.connection


# Article.create!([
#   {headline: "Pain-pill abuse kills hundreds in our suburbs", url: "http://www.lohud.com/story/news/investigations/2015/10/01/pain-pill-abuse/32287313/", date: "March 25, 2016", info: "", project_id: nil},
#   {headline: "PepsiCo to reopen sculpture garden in March", url: "http://preview.lohud.com/story/money/business/2016/09/02/pepsico-sculpture-garden/89350916/", date: "9/2/2016", info: "", project_id: nil},
#   {headline: "Libby Pataki to dissolve tourism nonprofit", url: "http://www.lohud.com/story/money/personal-finance/taxes/david-mckay-wilson/2016/07/21/libby-pataki-putnam-tourism/87345144/", date: "7/20/2016", info: "An investigation of Libby Pataki's tenure as tourism director.", project_id: nil},
#   {headline: "Investigation: Top hospital execs, docs get millions", url: "http://www.lohud.com/story/news/investigations/2016/06/02/new-york-hospital-payouts/85027532/", date: "6/5/2016", info: "", project_id: nil},
#   {headline: "German restaurants: Sour Kraut in Nyack is back", url: "http://www.lohud.com/story/life/food/restaurants/2016/06/16/german-restaurant-sour-kraut-nyack/85991118/", date: "6/16/2016", info: "In January, 2016, Liz Johnson reported on the closure of Sour Kraut in Nyack, one of the last remaining German restaurants, listing the last three in the region (none in Rockland). The owner was going to turn it into a speakeasy.", project_id: nil},
#   {headline: "Metro-North engineers, conductors suspended for cheating", url: "http://www.lohud.com/story/news/investigations/2016/06/01/metro-north-cheating-scandal/85242264/", date: "6/1/2016", info: "", project_id: nil},
#   {headline: "Indian Point: Unlikely alliance backs plant's future", url: "http://www.lohud.com/story/news/investigations/2016/05/17/indian-point-alliance/84456470/", date: "3/17/2016", info: "", project_id: nil},
#   {headline: "Shutdown battle: A tale of 2 nuclear power plants", url: "http://www.lohud.com/story/news/investigations/2016/05/18/indian-point-fitzpatrick/83981086/", date: "5/18/2016", info: "", project_id: nil},
#   {headline: "Taxpayers pony up for counties' private lawyers", url: "http://www.lohud.com/story/news/investigations/2016/05/11/rockland-westchester-legal-bills/32592507/", date: "5/12/2016", info: "", project_id: nil},
#   {headline: "East Ramapo, state hit with yeshiva lawsuit", url: "http://www.lohud.com/story/news/education/2015/11/20/east-ramapo-yeshivas-suit/75893324/", date: "11/20/2015", info: "", project_id: nil},
#   {headline: "Metro-North accidents cost $38M and climbing", url: "http://www.usatoday.com/story/news/investigations/2015/10/21/metro-north-lawsuits/74229694/", date: "10/21/2015", info: "", project_id: nil},
#   {headline: "Metro-North workers cash in to fix rails", url: "http://www.lohud.com/story/news/investigations/2016/01/21/metro-north-ot/78854948/", date: "1/22/2016", info: "", project_id: nil},
#   {headline: "Facing a legend: St. Thomas Aquinas Opens the Season Against St. John's", url: "http://www.usatoday.com/story/sports/basketball/2015/11/04/facing-legend-st-thomas-aquinas-opens-season-against-st-johns/74338722/", date: "11/3/2015", info: "", project_id: nil},
#   {headline: "Lohud reporter to discuss yeshivas on PBS", url: "http://www.lohud.com/story/news/2016/01/26/adrienne-sanders-appear-pbs/79346452/", date: "1/30/2016", info: "", project_id: nil},
#   {headline: "Zebrowski bill to improve non-public school education", url: "http://www.lohud.com/story/news/education/2015/11/24/zebrowski-bill-improve-non-public-school-education/76322088/", date: "11/24/2015", info: "", project_id: nil}
# ])
# Impact.create!([
#   {name: nil, description: "I was quoted on WOR 710 news radio in NYC market.", impact_date: nil},
#   {name: nil, description: "I was interviewed on WFAS 1230 in White Plains based on the impact of Painkillers to Heroin: A generation lost.", impact_date: nil},
#   {name: nil, description: "Health teachers in Yonkers school district have incorporated Painkillers to Heroin: A generation lost into lesson plans. ", impact_date: nil},
#   {name: nil, description: "CMS, the federal agency that oversees Medicare and Medicaid, launched an interactive mapping tool to track opioid pain pill prescribing data by community today (With a focus on helping the public learn more about which doctors are filing Medicare claims for opioids) A CMS official cited my coverage of the issue in an email related to the mapping press release: The tool can be accessed here: http://go.cms.gov/opioidheatmap. ", impact_date: nil},
#   {name: nil, description: "New York Department of Health officials provided data to federal DEA agents and prosecutors in connection to the October 1 arrest of Dr. Alfred Ramirez, according to court records. That information seems to have been shared as part of a policy shift as I was investigating the impact of the DOH's failure to provide narcotics prescribing records previously.", impact_date: nil},
#   {name: nil, description: "News-Press in Fort Myers and The Des Moines Register and Desert Sun have also linked my coverage for pill docs I and II, and Painkillers to Heroin: A generation lost. ", impact_date: nil},
#   {name: nil, description: "Lohud community conversation taking place based on the coverage.", impact_date: nil},
#   {name: nil, description: "PepsiCo pledged to reopen the Donald M. Kendall Sculpture Gardens in March 2017 after the company saw our article, reporting that the popular facility has remained closed to the public even though the world headquarters reopened for operation after a major renovation project. ", impact_date: nil},
#   {name: nil, description: "The story led to Libby Pataki's resignation as tourism director, the dissolution of one nonprofit, and the reconstituting of another, with a proper board of directors and appropriate oversight.", impact_date: nil},
#   {name: nil, description: "My investigation of Libby Pataki's tenure as tourism director led to her resignation and an investigation by Attorney Gen. Eric Scheiderman.", impact_date: nil},
#   {name: nil, description: "AG Schneiderman ordered that the nonprofit Visitors Bureau be reconstituted, with a functioning board, and bylaws. He also won an agreement from Pataki to dissolve the Putnam Tourism Corp., which Pataki had referred to as her \"foundation.\"  She is no longer associated with either nonprofit.", impact_date: nil},
#   {name: nil, description: "David Robinson was interviewed on WVOX's \"Good Morning Westchester\" radio program. ", impact_date: nil},
#   {name: nil, description: "The project was published in USA TODAY Network properties across New York, including The Journal News/lohud; Rochester Democrat & Chronicle; and the Poughkeepsie Journal. It attracted 17,000 unique visitors to lohud, alone. Online discussions included more than 50 reader comments via lohud and Facebook. ", impact_date: nil},
#   {name: nil, description: "Lohud audience engagement included 917 Facebook connect actions, 63 LinkedIn actions.", impact_date: nil},
#   {name: nil, description: "Advocacy groups, including health care unions New York State Nurses Association and SEIU, shared the project through their social media accounts, including links to the project's searchable database of nonprofit hospital compensation on lohud's NY Databases.", impact_date: nil},
#   {name: nil, description: "Reader contacts included emails and calls to the reporter. One email came from a former hospital board member. He said he left the board previously because of concerns about the rising executive compensation exposed in the lohud project.", impact_date: nil},
#   {name: nil, description: "The reporter received a call came from a nurse at a local hospital. She said the nursing staff learned their pay was capped just before the lohud project published. She is organizing opposition to nurse pay cap based on the findings of the lohud report.", impact_date: nil},
#   {name: nil, description: "After the piece went live, the owner got enough calls from fans of German food that she decided to fill the void she'd left by closing.", impact_date: nil},
#   {name: nil, description: "In June, the owner called to say she would be reopening: as a German restaurant. She'd seen the piece  saying there were very few restaurants left.", impact_date: nil},
#   {name: nil, description: "This story was mentioned on the Rush Limbaugh show.", impact_date: nil},
#   {name: nil, description: "The story was retweeted by key transportation figures in the Metro New York area.", impact_date: nil},
#   {name: nil, description: "The story led the 6/2 evening news report on Fox5Ny. http://www.fox5ny.com/news/151984057-story", impact_date: nil},
#   {name: nil, description: "This story generated behind-the-scenes meetings between top union officials and Metro-North, as well as the state Inspector General's office and MTA, which may be the subject of future stories.", impact_date: nil},
#   {name: nil, description: "Story was retweeted by Mike Shellenberger, a prominent climate change scientist as well as several of his Twitter followers. ", impact_date: nil},
#   {name: nil, description: "I picked up five followers from this group as a result of the story. And I was mentioned in a number of climate change-related retweets. ", impact_date: nil},
#   {name: nil, description: "This story was a lead-up to a story on a state hearing on the future of nuclear power plants. It and other generated roughly 50 link clicks based on Twitter activity. ", impact_date: nil},
#   {name: nil, description: "This story was run on the Sunday front page of our sister paper, The Rochester Democrat and Chronicle and was shared through its social media outlets.", impact_date: nil},
#   {name: nil, description: "The story was retweeted by nuclear energy organizations as well as groups such as Recliam New York, Cuomo Watch and Indian Point Entergy. ", impact_date: nil},
#   {name: nil, description: "I picked up 10 followers from this story and its leadup.\r\n", impact_date: nil},
#   {name: nil, description: "After reading my story, Rockland County officials began to scrutinize the numbers I published, convinced that the figure for 2015 had decreased from prior years, not risen, as my story showed. What they found is that they had failed to reveal $2.68 million in additional spending between 2009 and 2014. Based on the new data provided, I re-worked the story and re-published on May 12, 2016 to inform readers that significantly more of their tax dollars had been used to hire private lawyers.", impact_date: nil},
#   {name: nil, description: "My story on outsourced legal work by county governments prompted Rockland County officials to disclose nearly $2.7 million in additional payments to private law firms than they had initially revealed in response to a Freedom of Information Law request. This occurred after I published a watchdog story on the tax dollars spent on attorneys on May 11, 2016. ", impact_date: nil},
#   {name: nil, description: "Two months after the publication of my original story about the lack of secular studies in Hasidic yeshivas in Rockland County, a group of former yeshiva students and parents of current students filed a class-action civil rights lawsuit that accuses education officials, school administrators and the East Ramapo district superintendent of failing to provide boys with a sound, basic education.", impact_date: nil},
#   {name: nil, description: "Appeared on NY1's \"In Transit\" on 1/8/16 to discuss our story on the $38 million in legal costs Metro-North has incurred to settle lawsuits filed in the wake of several derailments.", impact_date: nil},
#   {name: nil, description: "After the story was published, the Federal Railroad Administration announced that it was considering a rule change that would limit the amount of hours track workers are allowed to put in during a day.", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "I am appearing on PBS' Religion & Ethics NewsWeekly to discuss the topic of secular education in Hasidic yeshivas.  Three sources that appeared in my story are also interviewed on the show. All episodes are available for download at www.pbs.org/wnet/religionandethics.", impact_date: nil},
#   {name: nil, description: "I am appearing on PBS' Religion & Ethics NewsWeekly to discuss the topic of secular education in Hasidic yeshivas.  Three sources that appeared in my story are also interviewed on the show. All episodes are available for download at www.pbs.org/wnet/religionandethics.", impact_date: nil},
#   {name: nil, description: "I am appearing on PBS' Religion & Ethics NewsWeekly to discuss the topic of secular education in Hasidic yeshivas.  Three sources that appeared in my story are also interviewed on the show. All episodes are available for download at www.pbs.org/wnet/religionandethics.", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: nil},
#   {name: nil, description: "In response to a lawsuit seeking to improve secular education in some Hasidic yeshivas, Assemblyman Kenneth Zebrowski, D-New City, crafted a bill that allows the state to enforce the legal standard of “substantial equivalence.”  The lawyer who filed that suit credited our coverage with emboldening plaintiffs to come forward with the complaint. ", impact_date: nil},
#   {name: nil, description: "I got an award!!", impact_date: "2016-12-12"},
#   {name: nil, description: "Retweet by college basketball analyst Jay Bilas, who has 1M followers", impact_date: "2016-03-10"}
# ])
# ImpactType.create!([
#   {description: "Law change/Policy change", image: "/assets/policy_icon.png.gif", name: "Law change/Policy change"},
#   {description: "Legal Impact", image: "/assets/law_icon.png", name: "Legal Impact"},
#   {description: "Government investigation", image: "/assets/investigation_icon.png", name: "Government Investigation"},
#   {description: "Media impact (picked up by other media, reporter interview etc...)", image: "/assets/media_icon.png", name: "Media Impact"},
#   {description: "Social media", image: "/assets/social_icon.png", name: "Social Media"},
#   {description: "Award", image: "/assets/award_icon.png", name: "Award"},
#   {description: "Community engagement", image: "/assets/community_icon2.png", name: "Community Engagement"},
#   {description: "Referenced by key individual", image: "/assets/individual_icon.png", name: "Referenced by Key Individual"},
#   {description: "Major citation", image: "/assets/citation_icon.png", name: "Major Citation"},
#   {description: "Institutional Action (firing, reorganization etc...)", image: "/assets/institution_icon.png", name: "Institutional Action"}
# ])
# ImpactRecord.create!([
#   {impact_id: 1, impact_type_id: 4, article_id: 1},
#   {impact_id: 2, impact_type_id: 4, article_id: 1},
#   {impact_id: 3, impact_type_id: 7, article_id: 1},
#   {impact_id: 4, impact_type_id: 9, article_id: 1},
#   {impact_id: 5, impact_type_id: 1, article_id: 1},
#   {impact_id: 6, impact_type_id: 4, article_id: 1},
#   {impact_id: 7, impact_type_id: 7, article_id: 1},
#   {impact_id: 8, impact_type_id: 10, article_id: 2},
#   {impact_id: 9, impact_type_id: 10, article_id: 3},
#   {impact_id: 10, impact_type_id: 3, article_id: 3},
#   {impact_id: 11, impact_type_id: 1, article_id: 3},
#   {impact_id: 12, impact_type_id: 4, article_id: 4},
#   {impact_id: 13, impact_type_id: 7, article_id: 4},
#   {impact_id: 14, impact_type_id: 5, article_id: 4},
#   {impact_id: 15, impact_type_id: 5, article_id: 4},
#   {impact_id: 16, impact_type_id: 7, article_id: 4},
#   {impact_id: 17, impact_type_id: 10, article_id: 4},
#   {impact_id: 18, impact_type_id: 7, article_id: 5},
#   {impact_id: 19, impact_type_id: 10, article_id: 5},
#   {impact_id: 20, impact_type_id: 4, article_id: 6},
#   {impact_id: 21, impact_type_id: 5, article_id: 6},
#   {impact_id: 22, impact_type_id: 4, article_id: 6},
#   {impact_id: 23, impact_type_id: 10, article_id: 6},
#   {impact_id: 24, impact_type_id: 5, article_id: 7},
#   {impact_id: 25, impact_type_id: 5, article_id: 7},
#   {impact_id: 26, impact_type_id: 5, article_id: 7},
#   {impact_id: 27, impact_type_id: 4, article_id: 8},
#   {impact_id: 28, impact_type_id: 5, article_id: 8},
#   {impact_id: 29, impact_type_id: 5, article_id: 8},
#   {impact_id: 30, impact_type_id: 3, article_id: 9},
#   {impact_id: 31, impact_type_id: 1, article_id: 9},
#   {impact_id: 32, impact_type_id: 2, article_id: 10},
#   {impact_id: 33, impact_type_id: 4, article_id: 11},
#   {impact_id: 34, impact_type_id: 1, article_id: 12},
#   {impact_id: 55, impact_type_id: 4, article_id: 14},
#   {impact_id: 60, impact_type_id: 5, article_id: 13},
#   {impact_id: 61, impact_type_id: 1, article_id: 15},
# ])
# Publication.create!([{name: "The Journal News", website: "http://lohud.com"}])
# Reporter.create!([{name: "Akiko Matsuda", bio: nil, image: "/assets/matsuda_akiko.jpg", publication_id: 1}, {name: "David McKay Wilson", bio: nil, image: "/assets/wilson_david.jpg", publication_id: 1},{name: "Thomas Zambito", bio: nil, image: "/assets/zambito_thomas.jpg", publication_id: 1},{name: "Jorge Fitz-Gibbon", bio: nil, image: "/assets/fitzgibbon_jorge.jpg", publication_id: 1}])
#   {name: "Liz Johnson", bio: nil, image: nil, publication_id: 1},
#   {name: "David Robinson", bio: nil, image: "/assets/robinson.jpg", publication_id: 1},
#   {name: "Akiko Matsuda", bio: nil, image: "/assets/matsuda_akiko.jpg", publication_id: 1},
#   {name: "David McKay Wilson", bio: nil, image: "/assets/wilson_david.jpg", publication_id: 1},
#   {name: "Thomas Zambito", bio: nil, image: "/assets/zambito_thomas.jpg", publication_id: 1},
#   {name: "Jorge Fitz-Gibbon", bio: nil, image: "/assets/fitzgibbon_jorge.jpg", publication_id: 1},
#   {name: "Adrienne Sanders", bio: nil, image: "/assets/sanders_adrienne.jpg", publication_id: 1}
# ])
# ReporterArticle.create!([
#   {reporter_id: 1, article_id: 1},
#   {reporter_id: 2, article_id: 2},
#   {reporter_id: 3, article_id: 3},
#   {reporter_id: 1, article_id: 4},
#   {reporter_id: 4, article_id: 5},
#   {reporter_id: 5, article_id: 6},
#   {reporter_id: 5, article_id: 7},
#   {reporter_id: 5, article_id: 8},
#   {reporter_id: 6, article_id: 9},
#   {reporter_id: 7, article_id: 10},
#   {reporter_id: 5, article_id: 11},
#   {reporter_id: 5, article_id: 12},
#   {reporter_id: 5, article_id: 13},
#   {reporter_id: 7, article_id: 14},
#   {reporter_id: 7, article_id: 15}
# ])
# User.create!([{name: "David Robinson", password_digest: "$2a$10$zDHvVZmLwBkFPWmAMLew7ucMRCZQEmN6YKVgBM.P6ZPCF75hkgX52", bio: "", email: "drobinson@lohud.com", image: nil, first_name: nil, last_name: nil, publication_id: 1, title: "Reporter"}])
