# Aggregate Table Script #
# Read data #
library("dplyr")
library("stringr")

by_country <-read.csv(file = "../data/gloabl_temp_archive/GlobalLandTemperaturesByCountry.csv",
                      header = TRUE, stringsAsFactors = FALSE)
co_emission <- read.csv(file = "../data/annual-co-emissions-by-region.csv",
                        header = TRUE, stringsAsFactors = FALSE)
#Aggregate Table#
#USA from 1990 to 2010 average temperature and emission of co2 by year#
usa_ave_temp <- by_country %>% 
  filter(dt > "1989-12-01" & dt < "2011-01-01") 

ave_t_1990 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1990")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1990")

ave_t_1991 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1991")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1991") %>% 
  union(ave_t_1990)

ave_t_1992 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1992")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1992") %>% 
  union(ave_t_1991)

ave_t_1993 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1993")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1993") %>% 
  union(ave_t_1992)

ave_t_1994 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1994")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1994") %>% 
  union(ave_t_1993)

ave_t_1995 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1995")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1995") %>% 
  union(ave_t_1994)

ave_t_1996 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1996")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1996") %>% 
  union(ave_t_1995)

ave_t_1997 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1997")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1997") %>% 
  union(ave_t_1996)

ave_t_1998 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1998")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1998") %>% 
  union(ave_t_1997)

ave_t_1999 <- usa_ave_temp %>% 
  filter(str_detect(dt, "1999")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "1999") %>% 
  union(ave_t_1998)

ave_t_2000 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2000")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2000") %>% 
  union(ave_t_1999)

ave_t_2001 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2001")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2001") %>% 
  union(ave_t_2000)

ave_t_2002 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2002")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2002") %>% 
  union(ave_t_2001)

ave_t_2003 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2003")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2003") %>% 
  union(ave_t_2002)

ave_t_2004 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2004")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2004") %>% 
  union(ave_t_2003)

ave_t_2005 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2005")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2005") %>% 
  union(ave_t_2004)

ave_t_2006 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2006")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2006") %>% 
  union(ave_t_2005)

ave_t_2007 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2007")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2007") %>% 
  union(ave_t_2006)

ave_t_2008 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2008")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2008") %>% 
  union(ave_t_2007)

ave_t_2009 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2009")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2009") %>% 
  union(ave_t_2008)

ave_t_2010 <- usa_ave_temp %>% 
  filter(str_detect(dt, "2010")) %>% 
  group_by(Country) %>% 
  summarize(ave_temp = mean(AverageTemperature)) %>% 
  mutate(Year = "2010") %>% 
  union(ave_t_2009)

us_ave_1990_2010 <- ave_t_2010 %>% 
  filter(Country == "United States") %>% 
  mutate(Year = as.numeric(Year))
us_co_emission <- co_emission %>% 
  filter(Entity == "United States") %>% 
  filter(Year > "1989" & Year < "2011") %>% 
  mutate(Year = as.numeric(Year))

us_temp_co2 <- left_join(us_ave_1990_2010, us_co_emission, 
                     by = c("Year" = "Year")) %>% 
  select(Year, ave_temp, Annual.CO2.emissions..zero.filled.)
us_temp_co2$ave_temp <- round(us_temp_co2$ave_temp, 4)
colnames(us_temp_co2)[3] <- "CO2 emission"

   
