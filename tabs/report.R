library("shiny")

report_page <- tabPanel(
  "Report",
  titlePanel("Report"),
  mainPanel(
    p("Project Title: Relationship between global temperature and carbon emission "),
    p("Authors: Angela Lin, alin28@uw.edu; Ningrui Yang, yangning@uw.edu; 
      Yujia Zhai, yzhai@uw.edu; Ruyi Liu, rliu3@uw.edu"),
    p("Affiliation: INFO-201: Technical Foundations of Informatics - 
    The Information School - University of Washington"),
    p("Date: Winter 2022"),
    p("Abstract:Our main question is how the emission of CO2 influences the 
    earth's temperature. This question is important because environmental 
    problems caused by climate change affect our daily life. Finally there 
    will be more natural disasters. To address the question, we will make use of
    the dataset: Climate Change, and analyze how the temperature changed overtime."),
    p("Keywords: climate change, temperature, emission, development"),
    p("1.0 Introduction:"),
    p("Our project is to investigate the relationship between global temperature 
    and carbon emission. We will use the data about carbon dioxide emission and 
    average annual temperature to discuss the possible factors. We will analyze
    how industry development impacts carbon dioxide emissions and mainly focus 
    on the differences between cities, countries, and U.S states. Also, we want 
    to figure out if human activities are a critical element of climate change.
    In addition to the data analysis, we are going to design some questions and 
    use the answers to build up a deeper understanding of this issue. This 
    project can help us clarify how carbon dioxide affects global temperature, 
    increase awareness of climate change, and demonstrate the solutions for 
    decreasing global warming. "),
    p("2.0 Design Situation:"),
    p("1. The concern of the topic is climate change, which is related to the 
      environment study domain. The key elements in this topic are the emission 
      of CO2, temperature change and global impact. The climate change topic is 
      related to many aspects like: science, social, government and economics.
      Why the emission of CO2 will cause the temperature increase is a scientific 
      question. When the climate changes our cultural and social situation will 
      definitely alter. For example, when the temperature increases, the glacier 
      will melt which will lead to floods and increase the sea level. When it 
      comes to economic issues, industrial development was limited in order to
      alleviate climate change. The progress of the economy in many countries
      was restricted by environmental policy."),
    p("2. The human value of climate change is different for each person. Some
        people attach importance to it, but some others may hold the point that 
        they do not care about it. Human values like: concerns of the lifetime 
        of earth, environmental impact, and social development always be considered
        if people pay attention to climate change problems. 'Based on this theory, 
        Corner et al. (2014) concluded that self-transcendence values are expected
        to be strongly associated with positive engagement with climate change, 
        while self-enhancing values appear less congruent with positive 
        engagement with climate change.'"),
     p("3. Direct stakeholders of climate change are people who live in the 
          world. Climate change will cause more natural diseases like earthquakes 
          and drought. People will be largely affected by these natural diseases.
          Besides, global warming will speed up the photochemical reaction between
          chemical pollutants in the atmosphere, causing harmful oxidants such 
          as actinic aerosols to increase and induce some diseases. Such as eye 
          inflammation, acute upper respiratory tract diseases, chronic bronchitis, 
          emphysema, bronchial asthma and other diseases. Indirect stakeholders 
          are industries. For example, global warming will seriously disrupt 
          fisheries in some ways: carbon dioxide in the air causes ocean 
          acidification, rising sea levels may change the ecology of fisheries,
          cold-water fish such as salmon may be deeply affected by warm currents, 
          and the prospects for fisheries are very worrying."),
       p("4. As I mentioned earlier, climate change will cause more natural 
            diseases, photochemical reactions, and ocean acidification. Besides, 
            the sea level will rise. About half of the population of the world 
            lives within 60 kilometers of the coastline, with a developed economy
            and urban density. These areas may be subject to inundation or 
            intrusion, erosion of beaches and coasts. In the short term, farmers
            in some regions may benefit from the earlier onset of spring and from 
            a longer warm season that is suitable for growing crops. Also, studies 
            show that, up to a certain point, crops and other plants grow better
            in the presence of higher carbon dioxide levels and seem to be more 
            drought-tolerant."),
    p("3.0 Research questions:"),
    p("1. Is climate change caused by humans?"),
    p("2. How has global warming affected the world so far?"),
    p("3. Will the actions we take today be enough to forestall the direct 
      impacts of climate change? Or is it too little too late?"),
    p("The motivation of these questions is to ask people to think of the cause 
      of climate change on the earth. When we look at the first question: Is 
      climate change caused by humans, we have to reflect on our actions in 
      the past. What did we do to bring harm to our environment? For the second
      one, we begin to consider the impact of climate change. Since we have the 
      dataset with a great time span, we can definitely check the temperature 
      change due to global warming. The last one is the future impact. We already 
      know that people's activities are the major factor of climate change. 
      Therefore, whether the actions we have taken are useful to address the 
      environment problems is really important."),
    p("4.0 The Dataset:")
    p("We have found two credible datasets that are potentially 
      useful to us. One is the global land temperature data which we obtained from
      Kagglen online community for data scientists. It contains the temperature 
      data (by month) from 1750 to 2015. There are five sub-sheets categorized 
      by city, country, major cities, states (the United States), and global 
      in general. All sheets have three columns in commonate, the average 
      temperature in Celsius, and the average temperature uncertainty in 
      Celsius (95% confidence interval). Global Land and Ocean-and-Land 
      Temperatures (GlobalTemperatures.csv) data consist of 9 columns, 
      including the three columns in common. The dataset as a whole includes 
      roughly 10 million observations. The original data is put together by
      Berkley Earth, an independent non-profit organization focused on 
      environmental data science, combined with 1.6 billion temperature reports
      from 16 pre-existing archives. Berkley Earth organized the data to raise 
      public attention about global warming. The study was entirely transparent 
      the source data and the code are published online. The data was later 
      repackaged on Kaggle to allow easier use. The description notes that 
      data were collected by technicians using mercury thermometers; thus, 
      variation in visit time may impact readings. In the 1980s, there was a 
      move to electronic thermometers that are said to have a cooling bias?
      (Berkeley Earth, 2017)"),
    p("The second dataset about the Carbon dioxide emissions by region from 1750
      to 2020 consists of 4 columns region name, region code, year, and annual 
      carbon dioxide emissions measured in tones. Each observation is defined by 
      the region and the year, and a total of 65853 observations are included. 
      We obtained this data from Our World in Data project of the Global Change 
      Data Lab, a non-profit organization based in the United Kingdom. It is about 
      research and data to make progress against the world  largest problems? 
      And the goal is to make the knowledge on the big problems accessible 
      and understandable? The original dataset was published by Global Carbon 
      Budget global Carbon Project (2021), a project that updates every year and 
      is maintained by scholars all over the world. The full reference can be 
      found at [Global Carbon Project](https://doi.org/10.18160/gcp-2021). 
      Our World in Data only extracted territorial emissions from the original 
      dataset includes emissions from fossil fuel combustion and oxidation and 
      cement production which do not account for emissions embedded in traded 
      goods and do not include the 'Statistical differences' column.
      (Ritchie & Roser, 2020)"),
    p("5.0 Findings: "),
    p("6.0 Discussion: "),
    p("7.0 Conclusion: "),
    p("Acknowledgements: We would like to thank our teaching assistant Akshita 
      Gundavarapu for giving us suggestions on this topic."),
    p("References:"),
    p("1. 30, R. C.N., Cho, R., Wingham, K., Ament, J., Andrea, Alex, Gary, & 
    Leinberger, B. (2018, January 18). Six tough questions about climate change.
    State of the Planet. Retrieved February 3, 2022, from 
    https://news.climate.columbia.edu/2015/11/30/six-tough-questions-about-climate-change/"),
    p("2. Climate change: Frequently asked questions. The Nature Conservancy. 
    (2018, December 9). Retrieved February 3, 2022, from 
    https://www.nature.org/en-us/what-we-do/our-priorities/tackle-climate-change/climate-change-stories/climate-change-frequently-asked-questions/#humans"),
    p("3. Plumer, B., Resnick, B., & Irfan, U. (2017, June 1). 9 questions about 
    climate change you were too embarrassed to ask. Vox. Retrieved February 4, 
    2022, from https://www.vox.com/science-and-health/2017/6/1/15724164/9-questions-climate-change-too-embarrassed-to-ask"),
    p("4. Prati, G., Pietrantoni, L., &amp; Albanesi, C. (2017, July 25). Human 
    values and beliefs and concern about climate change: A Bayesian longitudinal 
    analysis - quality &amp; quantity. SpringerLink. Retrieved February 4, 2022, 
    from https://link.springer.com/article/10.1007/s11135-017-0538-z#:~:text=Based%20on%20this%20theory%2C%20Corner,positive%20engagement%20with%20climate%20change."),
    p("5.Berkley Earth. (2017, May 1). Climate change: Earth surface temperature
    data. Kaggle. Retrieved February 5, 2022, from https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data?select=GlobalLandTemperaturesByState.csv"),
    p("6.Hannah Ritchie and Max Roser (2020) - 'CO2? and Greenhouse Gas Emissions'. 
    Published online at OurWorldInData.org. Retrieved from: https://ourworldindata.org/co2-and-other-greenhouse-gas-emissions"),
    p("Appendix A: Questions: Can we add more data when we do the project?")
    
  )
)
