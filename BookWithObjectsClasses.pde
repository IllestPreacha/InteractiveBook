String Countries [] = {
  "Ghana", "Nigeria", "Cameroon", "Haiti", "Bermuda", "USA", "Brazil", "Jamiaca", "Barbados", "Kenya"
};

String FlagSource [] = {
  "http://cdn.ghanaweb.com/imagelib/pics/79307655.jpg", "http://www.all-flags-world.com/country-flag/Nigeria/flag-nigeria-XL.jpg", "https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/cm-lgflag.gif", 
  "http://kids.nationalgeographic.com/content/kids/en_US/explore/countries/haiti/_jcr_content/content/textimage/image.img.gif/1396531622893.gif", "http://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bermuda.svg/2000px-Flag_of_Bermuda.svg.png", 
  "http://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/640px-Flag_of_the_United_States.svg.png", "http://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/720px-Flag_of_Brazil.svg.png", 
  "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQU9GvsTNYhlW7TxLbe9W67JgOBMLxNiOxGTmZWUrcWOIVoIH-dyg", "http://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Flag_of_Barbados.svg/2000px-Flag_of_Barbados.svg.png", 
  "http://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Kenya.svg/900px-Flag_of_Kenya.svg.png"
};

int k = 0;

Country Ghana = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6, displayHeight/6 + displayHeight/8); 
Country Nigeria = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6 + displayHeight/2, displayHeight/6 + displayHeight/8 + displayHeight/2);
Country Cameroon  = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6, displayHeight/6 + displayHeight/8);
Country Haiti = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6 + displayHeight/2, displayHeight/6 + displayHeight/8 + displayHeight/2); 
Country Bermuda = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6, displayHeight/6 + displayHeight/8); 
Country USA = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6 + displayHeight/2, displayHeight/6 + displayHeight/8 + displayHeight/2);
Country Brazil  = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6, displayHeight/6 + displayHeight/8); 
Country Jamiaca = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6 + displayHeight/2, displayHeight/6 + displayHeight/8 + displayHeight/2);
Country Barbados = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6, displayHeight/6 + displayHeight/8);  
Country Kenya = new Country(displayWidth/20, displayWidth/20 + displayWidth/8, displayHeight/6 + displayHeight/2, displayHeight/6 + displayHeight/8 + displayHeight/2);


void StartMenu()
{
  fill(#158BFF);
  for (float i = 0; i < displayWidth; i = i + displayWidth/5) 
    for (float j = 0; j < displayHeight; j = j + displayHeight/2) {
      PImage Flags  = loadImage(FlagSource[k], "png");
      fill(#158BFF);
      image(Flags, i+(displayWidth/20), j+(displayHeight/6), (displayWidth/8), (displayHeight/8));
      fill(0, 0, 0);
      textSize(displayWidth/54);
      text(Countries[k], i+ (displayWidth/16), j+ (displayHeight/3));
      k++;
    }
}


void setup()
{
  size(displayWidth, displayHeight);
  background(#19F7E7);
  StartMenu();
  textAlign(CENTER);
  fill(0, 0, 0);
  textSize(displayWidth/36);
  text("Click on the Country, you Wish to learn more about", displayWidth/2, displayHeight/16);
}

class Country { 

  float Swidth, Sheight, Ewidth, Eheight;

  Country (float a, float b, float c, float d)
  {
    Swidth = a;
    Sheight = b;
    Ewidth = c;
    Eheight = d;
  }

  void Pressed() {

    if (mouseX > Swidth && mouseX < Sheight && mouseY >  Ewidth && mouseY <  Eheight)
      background(0, 0, 0);
  }
}

void mousePressed()
{
  Ghana.Pressed();
  Nigeria.Pressed();
  Cameroon.Pressed();
  Haiti.Pressed();
  Bermuda.Pressed();
  USA.Pressed();
  Brazil.Pressed();
  Jamiaca.Pressed();
  Barbados.Pressed();
  Kenya.Pressed ();
}
