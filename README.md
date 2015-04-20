# demoOnlineShop

Step-by-step build demo application:
------
1. run rake db:migrate
2. run rake db:seed (using mock data)
3. run rails s

Scenario:
-------
1. visit list of product , and pick the selected product with 'purchase'
2. next , the flow goes to "purchase form" , fill attribute needed before transaction start
3. confirmation for last chance , if all data incorrect, will should go back to "purchase form page" (no.2)
4. if valid , buyer should click generate token to generate TOTP password and then can continue the payment process
5. if token valid from system , will goes to online shop page in this case list of product (no.1)
6. if token invalid , will go back again to "purchase form" (no.2)
