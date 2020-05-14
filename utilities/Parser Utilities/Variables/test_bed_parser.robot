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