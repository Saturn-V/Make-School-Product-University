# Front-end-web-class-4


## Class Competencies

Students will: 

- Use float and clear
- Assess the box model
- Layout elements 
- Design your portfolio

# Schedule 

|   | Time   |    | Activity | Description|
|---|--------|----|----------|------------|
|  1|  5 mins|   5|        TT| The Box Model|
|  2|  5 mins|  10|      Demo| Box model demo|
|  3|  5 mins|  15|        TT| Float|
|  4| 30 mins|  45|      Demo| Float Challenges|
|  5| 10 mins|  55|     Break| |
|  6|  5 mins|  70|        TT| Designing with a grid|
|  7| 30 mins| 100|      Work| Sketch your portfolio using a grid|

## 1 - The Box Model

Elements that display as block take up space as a box on the screen. 
I will use the block and box interchangably. 
The total space a box fills follows a few rules. 

- The dimensions of a box are determined by four features: 
    - width and height
    - padding
    - border
    - margin
- The total width of a box is
    - width + padding + border + margin-left + margin-right
- The total height of a box is
    - height + padding + border + margin-top + margin-bottom

### Default Width and Height

The width and height of a box follow some simple rules. 

- The width of a box is the width of it's container
    - Unless you set the width to a value
- The height of a box is the height of it's content
    - A box with no content is height 0

### Padding

Imagine padding as inside the box. Padding will include any background 
color or background image assigned to a box.

### Border

Borders have three features:

- style
    - solid, dashed, double, etc.
- Color
- width

### Margin 

Margin does not display any background color or background image fill. 
Think of margin as being outside the box. 

Think of margins as pushing neighboring boxes away from each other.

Horizontal margins add, while vertical margins overlap.

### Percent sizes 

You can set the size of an element in %. This unit is a percent 
of the parent element. For example 

`width:50%` 

Sets the width of an element to 50% of the width of the parent element. 

### calc()

Use calc() to apply simple mathematical calculations to your 
CSS values. Calc() supports: +, -, *, and /. 

The beauty of calc() is it allows you to mix units! For example:

`calc(100% - 2em)`

or 

`calc(200px - 1em * 2)`

Consider how the box model works, then think about calc() and 
how it can solve some of the situations 

## 2 - Box model demo

...

## 3 - Float

Float uses a completely different method to position elements on the screen. 
Use float to layout pages where elements have to be positioned side by side. 

You can use float to create many of the layouts you might imagine. 
There are a few situations where float doesn't work. 
For these use absolute or relative position, which we will talk about later.

Float can also be used to wrap text around an image. 

Elements can be floated left or right

- float: left
- float: right

### Demo

...

## 4 - Float Challenges

Do your best to recreate the challenges in: 
[Float Challenges](Float Challenges)

- [challenge-0.html](Float Challenges/challenge-0.html)
- [challenge-1.html](Float Challenges/challenge-1.html)
- [challenge-2.html](Float Challenges/challenge-2.html)
- [challenge-3.html](Float Challenges/challenge-3.html)
- [challenge-4.html](Float Challenges/challenge-4.html)
- [challenge-5.html](Float Challenges/challenge-5.html)
- [challenge-6.html](Float Challenges/challenge-6.html)

Try your best to recreate these on your own. 
Only look at the source code if you need help. 

## 5 - Break 

...

## 6 - Designing on a grid

Grid systems have been used in design for years and long predate 
the internet and digital tools. Using a grid will make your designs
look great. Always use a grid! 

Take a look at one these sites below and look for designs that
you like. Identify the grid system used. 

- [Dribbble](https://dribbble.com/search?q=grid)
- [Pinterest](https://www.pinterest.com/search/pins/?q=web%20design%20grid&rs=typed&term_meta[]=web%7Ctyped&term_meta[]=design%7Ctyped&term_meta[]=grid%7Ctyped)
- [Behance](https://www.behance.net/search?content=projects&sort=appreciations&time=week&search=webdesign)

### Sketching your design

After absolrbing some ideas and getting a feel for how grids 
are used in design start designing your own site using a grid. 
You can use Sketch, or draw/sketch your designs on paper. 

If you like, print a grid on paper and use that. Here are a few
PDFs.

[960-Grid](https://github.com/nathansmith/960-Grid-System/tree/master/sketch_sheets)

## Projects and Challenges

- Sketch some ideas for your portfolio site
    - These can just be done in Sketch, or on paper at this stage.
    - Don't draw just one design draw at least three! More if you can. 
- Redesign the App page you made earlier using a grid.
- Finish applying CSS styles to your other projects:
    - Tip Calculator
    - Timer








