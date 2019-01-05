def shop():
    click("new_tab-1.png") #new tab 
    click("url-1.png") # url
    #type ("http://wwwstage.globe.com.ph/shop/mobile.html") 
    type ("http://wwwdev.globe.com.ph/shop/platinum.html") 
    #type("https://author-globe-telecom-devl-63.adobecqms.net/content/globe/en-PH/index/shop/mobile.html")
    #type("http://localhost:4502/content/globe/en-PH/index/shop.html")
    #type("http://oc3-brie-inter-globe-author.sutrix.com/content/globe/en-PH/index/shop.html")
    #type("http://localhost:4502/content/globe/en-PH/index/shop/products/broadband/broadband-plan-1299-go-big.html")
    type (Key.ENTER)
    wait(1)
    type(Key.PAGE_DOWN*2)
def sim():
    while not exists("1534740085229.png"):
        wait(1)
    click("1534740085229.png")
def addToCard():
    while not exists("btnAddToCart.png"):
        wait(2)
    #click("btnAddToCart.png")
    while True:
        if exists("btnAddToCart.png"):
            click("btnAddToCart.png") #click Add To Card
        wait(5)
        if exists(Pattern("btnProceedToCheckout.png").exact()):
            break;
def checkout():
    while True:
        if exists("btnProceedToCheckout.png"):
            hover("btnProceedToCheckout.png")
            wait(5)
        if exists("1534399637064.png"):
            click("1534399637064.png")
            wait(10)
        if exists(Pattern("cbGender.png").exact()):
            break;
        wait(3)
def cart():
    while True:
        if exists(Pattern("cbGender-1.png").exact()):
            click("cbGender-1.png")
            type(Key.DOWN*1) #select Female
            type(Key.ENTER)
            
            type(Key.TAB)
            type(Key.DOWN*6)  #select Mrs  
            type(Key.ENTER)
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            type("ho")
            
            type(Key.TAB)
            #type(Key.CTRL+"a")
            type(Key.BACKSPACE)
            type("nhu")
            wait(1)
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            type("thuy")
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            type("27/3/1990")
            
            type(Key.TAB)
            type(Key.ENTER)
            type(Key.DOWN*1) #select Filipino       
            wait(1)
            type(Key.ENTER)
            wait(1)
            
            type(Key.TAB)
            type(Key.ENTER)
            type(Key.DOWN*5) #select Single    
            type(Key.ENTER)
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            type("1")
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            wait(1)
            type("Mother's Maiden Name")
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            wait(1)
            type("cafesua2703@gmail.com")
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            type("0907294654")
            type(Key.ENTER)
            break;
        wait(3)
    #Step 2
    while True:
        if exists(Pattern("1534155242064-1.png").exact()):
            type(Key.TAB)
            type(Key.ENTER)
            type(Key.DOWN*1) #select employee
            type(Key.ENTER)
        
            type(Key.TAB)
            type(Key.BACKSPACE)
            type("Employer/Business Name")
            
            type(Key.TAB)
            type(Key.ENTER)
            type(Key.DOWN*1) #select accomodation
            type(Key.ENTER)
            
            type(Key.TAB)
            type(Key.ENTER)
            type(Key.DOWN*1) #select 8000-9999
            type(Key.ENTER)
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            type("Current Position Held")
            
            type(Key.TAB)    
            type(Key.BACKSPACE)
            type("Company/Business Address")
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            type("0907294654")
            
            type(Key.TAB)
            type(Key.BACKSPACE)
            type(Key.ENTER)
            type("08/2018")  
            type(Key.ENTER)
            break;
    wait(3)
    #step 3
    #while True:
    if exists("1534213635141-2.png"):
        
        type(Key.TAB)
        type(Key.BACKSPACE)
        type("1")
        
        type(Key.TAB)
        type(Key.BACKSPACE)
        type("House No./ Building No.")
        
        type(Key.TAB)
        type(Key.BACKSPACE)
        type("Building Name")
        
        type(Key.TAB)
        type(Key.BACKSPACE)
        type("1")
        
        type(Key.TAB)
        type(Key.ENTER)
        type(Key.DOWN*1) #select Abra
        type(Key.ENTER)
        wait(3)
        
        type(Key.TAB)
        type(Key.ENTER)
        type(Key.DOWN*1) #select Bangued
        type(Key.ENTER)
        wait(2)
        
        type(Key.TAB)
        type(Key.BACKSPACE)
        type("Barangay")
        
        type(Key.TAB)
        type(Key.ENTER)
        type(Key.DOWN*1) #select 2800
        type(Key.ENTER)
        
        type(Key.TAB)
        type(Key.ENTER)
        type(Key.DOWN * 1)  #select Company Owned
        type(Key.ENTER)
    
        type(Key.TAB)
        type(Key.ENTER)
            #break;
    #step 4
    wait(3)
    
    #address
    type(Key.TAB)
    type(Key.TAB)
    type(Key.ENTER)
    wait(3)
    
    #application document
    type(Key.TAB)
    wait(1)
    type(Key.TAB)
    wait(1)
    type(Key.TAB)
    wait(1)
    type(Key.TAB)
    wait(1)
    type(Key.ENTER)
    wait(5)
    
    #agree
    type(Key.TAB)
    wait(1)
    type(Key.TAB)
    wait(1)
    type(Key.TAB)
    wait(1)
    type(Key.ENTER)
    wait(3)
def orderSummary():
    #order summary
    while True:
        if exists("1534399972785.png"):
            click("1534399972785.png")
        wait(2)
        if exists("1534400007727.png"):
            click("1534400007727.png")
            type(Key.TAB)
            type(Key.ENTER)
            break;
        wait(3)
    while not exists("1534415994821.png"):
        wait(1)
#App.open("Google Chrome")
shop()
sim()
addToCard()
checkout()
cart()
orderSummary()


  







 