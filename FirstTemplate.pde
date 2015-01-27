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

void draw()
{
}

// matching the if statements to the coordinates of flags to transfer to MousePressed()

void Ghana()
{
  if (mouseX > displayWidth/20 && mouseX < displayWidth/20 + displayWidth/8 && mouseY > displayHeight/6 && mouseY < displayHeight/6 + displayHeight/8)
    background(0, 0, 0);
}

void Nigeria()
{
  if (mouseX > displayWidth/20 && mouseX < displayWidth/20 + displayWidth/8 && mouseY > displayHeight/6 + displayHeight/2 && mouseY < displayHeight/6 + displayHeight/8 + displayHeight/2)
    background(0, 0, 0);
}

void Cameroon()
{
  if (mouseX > displayWidth/20 + displayWidth/5 && mouseX < displayWidth/20 + displayWidth/8 + displayWidth/5 && mouseY > displayHeight/6 && mouseY < displayHeight/6 + displayHeight/8)
    background(0, 0, 0);
}

void Haiti()
{
  if (mouseX > displayWidth/20 + displayWidth/5 && mouseX < displayWidth/20 + displayWidth/8 + displayWidth/5 && mouseY > displayHeight/6 + displayHeight/2 && mouseY < displayHeight/6 + displayHeight/8 + displayHeight/2)
    background(0, 0, 0);
}

void Bermuda()
{
  if (mouseX > displayWidth/20 + 2 * displayWidth/5 && mouseX < displayWidth/20 + displayWidth/8 + 2 * displayWidth/5 && mouseY > displayHeight/6 && mouseY < displayHeight/6 + displayHeight/8)
    background(0, 0, 0);
}

void USA()
{
  if (mouseX > displayWidth/20 + 2 * displayWidth/5 && mouseX < displayWidth/20 + displayWidth/8 + 2 * displayWidth/5 && mouseY > displayHeight/6 + displayHeight/2 && mouseY < displayHeight/6 + displayHeight/8 + displayHeight/2)
    background(0, 0, 0);
}

void Brazil()
{
  if (mouseX > displayWidth/20 + 3 * displayWidth/5 && mouseX < displayWidth/20 + displayWidth/8 + 3 * displayWidth/5 && mouseY > displayHeight/6 && mouseY < displayHeight/6 + displayHeight/8)
    background(0, 0, 0);
}

void Jamiaca()
{
  if (mouseX > displayWidth/20 + 3 * displayWidth/5 && mouseX < displayWidth/20 + displayWidth/8 + 3 * displayWidth/5 && mouseY > displayHeight/6 + displayHeight/2 && mouseY < displayHeight/6 + displayHeight/8 + displayHeight/2)
    background(0, 0, 0);
}

void Barbados()
{
  if (mouseX > displayWidth/20 + 4 * displayWidth/5 && mouseX < displayWidth/20 + displayWidth/8  + 4 * displayWidth/5 && mouseY > displayHeight/6 && mouseY < displayHeight/6 + displayHeight/8)
    background(0, 0, 0);
}

void Kenya ()
{
  if (mouseX > displayWidth/20 + 4 * displayWidth/5 && mouseX < displayWidth/20 + displayWidth/8  + 4 * displayWidth/5 && mouseY > displayHeight/6 + displayHeight/2 && mouseY < displayHeight/6 + displayHeight/8 + displayHeight/2)
    background(0, 0, 0);
}

void mousePressed()
{
  Ghana();
  Nigeria();
  Cameroon();
  Haiti();
  Bermuda();
  USA();
  Brazil();
  Jamiaca();
  Barbados();
  Kenya ();
}
