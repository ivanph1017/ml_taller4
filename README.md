# Naive Bayes Classifier for Discrete Predictors

Call:  
naiveBayes.default(x = train_data[3:9], y = train_data$Survived)  

A-priori probabilities:  

| 0 (Not survived) | 1 (Survived) |
| :--------------: | :----------: |
| 0.6175478        | 0.3824522    |

Conditional probabilities:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pcclass (Ticket class)

|                  | 1 (Upper class) | 2 (Middle class) | 3 (Lower class) |
| :--------------- | :-------------: | :--------------: | :-------------: |
| 0 (Not survived) | 0.1457195       | 0.1766849        | 0.6775956       |
| 1 (Survived)     | 0.3941176       | 0.2558824        | 0.3500000       |

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex

|                  | female    | male      |
| :--------------- | :-------: | :-------: |
| 0 (Not survived) | 0.1475410 | 0.8524590 |
| 1 (Survived)     | 0.6794118 | 0.3205882 |

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Age

|                  | [0.42,25) | [25,31)   | [31,80]   |
| :--------------- | :-------: | :-------: | :-------: |
| 0 (Not survived) | 0.2914390 | 0.3825137 | 0.3260474 |
| 1 (Survived)     | 0.3470588 | 0.2941176 | 0.3588235 |

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sibsp (# of siblings / spouses aboard the Titanic)

|                  | 0           | 1           | 2           | 3           | 4           | 5           | 8           |
| :--------------- | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: |
| 0 (Not survived) | 0.724954463 | 0.176684882 | 0.027322404 | 0.021857923 | 0.027322404 | 0.009107468 | 0.012750455 |
| 1 (Survived)     | 0.611764706 | 0.329411765 | 0.038235294 | 0.011764706 | 0.008823529 | 0.000000000 | 0.000000000 |

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Parch (# of parents / children aboard the Titanic)

|                  | 0           | 1           | 2           | 3           | 4           | 5           | 6           |
| :--------------- | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: |
| 0 (Not survived) | 0.810564663 | 0.096539162 | 0.072859745 | 0.003642987 | 0.007285974 | 0.007285974 | 0.001821494 |
| 1 (Survived)     | 0.679411765 | 0.191176471 | 0.117647059 | 0.008823529 | 0.000000000 | 0.002941176 | 0.000000000 |

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fare (Passenger fare)

|                  | [0,8.66)  | [8.66,26) | [26,512]  |
| :--------------- | :-------: | :-------: | :-------: |
| 0 (Not survived) | 0.4280510 | 0.3060109 | 0.2659381 |
| 1 (Survived)     | 0.1764706 | 0.3000000 | 0.5235294 |

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Embarked (Port of Embarkation)

|                  | C (Cherbourg) | Q (Queenstown) | S (Southampton) |
| :--------------- | :-----------: | :------------: | :-------------: |
| 0 (Not survived) | 0.13661202    | 0.08561020     | 0.77777778      |
| 1 (Survived)     | 0.27352941    | 0.08823529     | 0.63823529      |
 

> test_pred  
  [1] 0 0 0 0 1 0 0 1 0 0 0 0 1 0 1 1 0 0 0 0 1 0 1 1 1 0 1 0 0 0 0 0 1  
 [34] 1 1 0 0 0 0 0 0 0 0 1 1 0 1 0 1 1 1 0 1 1 0 0 0 0 0 1 0 0 0 0 1 1  
 [67] 0 0 1 1 0 0 0 1 1 1 0 1 0 0 0 1 0 0 0 0 0 0 0 1 1 0 1 0 1 0 1 0 0  
[100] 0 1 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 1 0 0 0 1  
[133] 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0  
[166] 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 1 0  
[199] 0 0 1 0 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1 1 0 1 0 1 0 1 1 0 0 0 0 0  
[232] 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 1  
[265] 0 0 0 0 0 0 1 0 1 1 0 1 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 0 0 1 0 0 1  
[298] 0 0 0 0 0 0 0 0 1 1 0 1 1 0 0 0 0 1 0 1 0 0 0 0 0 0 0 1 0 1 1 0 0  
[331] 1 1 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 1 1 0 1 0 0 1 0 1 1  
[364] 0 1 1 0 1 1 0 0 1 0 0 1 1 1 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 0 1  
[397] 0 1 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 0 0   
Levels: 0 1  
