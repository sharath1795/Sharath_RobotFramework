*** Variables ***
${Browser}                  chrome
${URL}                      http://masterdemo5.gtatlantis.gr8hr.biz/
${username}                 majordomo
${password}                 sa
${CurrentSalary}            //div[@class='span6 text-right'][contains(.,'Current Salary Amount')]
${CurrentSalaryAmount}      (//div[@class='span6 wisa-amount ng-binding'])[1]
${RevisedSalary}            //div[@class='span6 text-right'][contains(.,'Revised Salary Amount')]
${RevisedSalaryAmount}      (//div[@class='span6 wisa-amount ng-binding'])[2]
${TotalEmployeeCount}       //div[@class='span6 text-right'][contains(.,'Total Employee Count')]
${EmployeeCount}            (//div[@class='span6 wisa-amount ng-binding'])[3]
${Goal}                     //label[contains(text(),'Goal Amount')]
${GoalAmount}               //div[contains(@class,'goal-amt ng-scope ng-binding')]
${Goal%}                    //p[contains(text(),'Goal %')]
${GoalPercentage}           //body[@class='gt-payroll ng-scope ng-isolate-scope']/div[@class='container2 fixed-top']/div[@class='content']/div[@class='ng-scope']/div[@class='inner-content']/div[@class='app-content']/div[@class='main-content']/div[@id='main']/div/div[@id='app-container']/div[@class='ng-scope']/div[@class='ng-scope']/div[@class='pageset']/form[@name='wiz_form']/div/div[@class='row-fluid ng-scope']/div[@class='summery-row']/div[@class='summery-card']/div[@class='summery-body d-flex']/div[1]/div[1]/p[2]
${Goalamt}                  //p[contains(text(),'Goal amount')]
${GoalAmt}                  //body[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/p[2]/b[1]
${Actual%}                  //p[contains(text(),'Actual %')]
${ActualPercentage}         //body[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[1]/p[2]
${Actual}                   //p[contains(text(),'Actual amount')]
${ActualAmount}             //div[@class='summery-body d-flex']//div[2]//div[2]//div[1]//p[2]//b[1]
${Variation%}               //p[contains(text(),'Variation %')]
${VariationPercentage}      //body[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[3]/div[1]/p[2]
${Variation}                //p[contains(text(),'Variation amount')]
${VariationAmount}          //div[@id='main']//div//div[3]//div[2]//div[1]//p[2]//b[1]
