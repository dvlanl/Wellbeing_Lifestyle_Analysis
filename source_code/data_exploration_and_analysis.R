## CORRELATION ANALYSIS
## I started my analysis by calculating the correlation coefficients between several key variables in the dataset. Correlation helps us understand the strength and direction of the relationship between two variables.

## Correlation between Weekly Meditation and Work/Life Balance:
# Calculate correlation between Weekly Meditation and Work/Life Balance
result = cor(DATA$WEEKLY_MEDITATION, DATA$WORK_LIFE_BALANCE_SCORE)
# The correlation coefficient is 0.416, indicating a moderate positive correlation.

## Correlation between Daily Shouting and Stress Level:
# Calculate correlation between Daily Shouting and Stress Level
result = cor(DATA$DAILY_SHOUTING, DATA$DAILY_STRESS)
# The correlation coefficient is 0.303, indicating a weak positive correlation.

## Correlation between Daily Stress and Work/Life Balance:
# Calculate correlation between Daily Stress and Work/Life Balance
result = cor(DATA$DAILY_STRESS, DATA$WORK_LIFE_BALANCE_SCORE)
# The correlation coefficient is -0.365, indicating a moderate negative correlation.

## Correlation between Social Network and Work/Life Balance:
# Calculate correlation between Social Network and Work/Life Balance
result = cor(DATA$SOCIAL_NETWORK, DATA$WORK_LIFE_BALANCE_SCORE)
# The correlation coefficient is 0.413, indicating a moderate positive correlation.

#_______________________________________________________________________________________


## VISUALIZATION
## To gain further insights, we created visualizations to explore the relationships visually.

## Meditation Frequency vs. Work/Life Balance:
# Visualization of Meditation Frequency vs. Work/Life Balance
ggplot(data = DATA, aes(x = WEEKLY_MEDITATION, y = WORK_LIFE_BALANCE_SCORE)) +
  geom_smooth() +
  labs(title = "Meditation Frequency vs. Work/Life Balance",
       subtitle = "The Number of Times the Participants Meditate Per Week Compared to Their Personal Work/Life Balance Score",
       x = "Meditation Frequency (Per Week)",
       y = "Work/Life Balance Score") +
  theme(plot.subtitle = element_text(size = 7))

## The plot shows a trend line depicting the relationship between meditation frequency per week and work/life balance scores. The positive slope of the trend line indicates that higher meditation frequency tends to be associated with higher work/life balance scores.

## Daily Shouting vs. Stress Level:
# Visualization of Daily Shouting vs. Stress Level
ggplot(data = DATA, aes(x = DAILY_SHOUTING, y = DAILY_STRESS)) +
     geom_smooth() +
     labs(title = "Daily Shouting vs. Stress Level",
          subtitle = "Number of Times a Person Shouts in a Day Compared to Self-Score on Stress (0-5 Scale)",
          x = "Daily Shouting",
          y = "Stress Level Score") +
     theme(plot.subtitle = element_text(size = 7))

## The plot displays a trend line representing the relationship between daily shouting occurrences and self-reported stress levels. The slight positive slope of the trend line indicates that there is a weak positive relationship between these variables.

## Daily Stress vs. Work/Life Balance:
# Visualization of Daily Stress vs. Work/Life Balance
ggplot(data = DATA, aes(x = DAILY_STRESS, y = WORK_LIFE_BALANCE_SCORE)) +
  geom_smooth(method = "loess", se = FALSE, k = 5) +
  labs(title = "Daily Stress vs. Work/Life Balance",
       subtitle = "Daily Stress Levels Compared to Work/Life Balance Scores",
       x = "Daily Stress",
       y = "Work/Life Balance Score") +
  theme(plot.subtitle = element_text(size = 7))

## This plot uses a loess smoothing method to visualize the relationship between daily stress levels and work/life balance scores. The downward curve of the loess line indicates a negative correlation between daily stress and work/life balance.


## Social Network vs. Work/Life Balance:
# Visualization of Social Network vs. Work/Life Balance
ggplot(data = DATA, aes(x = SOCIAL_NETWORK, y = WORK_LIFE_BALANCE_SCORE)) +
  geom_smooth(method = "loess", se = FALSE, k = 5) +
  labs(title = "Social Network vs. Work/Life Balance",
       subtitle = "Number of People Interacted with During a Typical Day Compared to Work/Life Balance Scores",
       x = "Social Network (Number of People)",
       y = "Work/Life Balance Score") +
  theme(plot.subtitle = element_text(size = 7))

## This plot utilizes a loess smoothing method to visualize the relationship between the size of participants' social networks (number of people interacted with during a typical day) and their work/life balance scores. The curve of the loess line indicates a positive correlation between social network size and work/life balance scores.

## These visualizations provide valuable insights into potential relationships between different lifestyle factors and work/life balance scores. It is evident that certain aspects, such as meditation frequency and social network size, show moderate positive correlations with work/life balance, while others, such as daily stress, demonstrate a negative correlation. Further analysis can help uncover more patterns and provide deeper insights for optimizing individual well-being.
