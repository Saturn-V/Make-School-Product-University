# Front-end Web: Lesson 2

Web design with CSS an introduction

## Class objectives

students will: 

- Identify Selectors, properties, and values
- Write CSS rules
- Modify tags with class names
- Formulate selectors to select anything in a page

## Schedule 

|   | Time   |    | Activity | Description|
|---|--------|----|----------|------------|
| 1 | 5 min  |   5| TT       | What is CSS? |
| 2 | 5 min  |  10| I do, we do | Create a style sheet, link it to a document |
| 3 | 5 min  |  15| TT       | CSS syntax, Selectors, Properties, and values |
| 4 | 5 min  |  50| I do, we do | Applying styles       |
| 5 | 10 min |  60| Break    |                          |
| 6 |  5 min |  65| TT       | Closer look at selectors |
| 7 | 15 min |  80| Pair     | CSS Diner quiz           |
| 8 | 5 min  |  85| TT       | Using selectors effectively |
| 9 | 25 min | 105| work     | Apply some styles to one of your web pages |

### 1 - What is CSS? 

- CSS enforces the separation of content and presentation. 
- CSS is a language of visual description. 
- CSS is super powerful it can: 
  - Set the font, size, color, line spacing, etc
  - Set the size, position and layout of elements in a page
  - Set image and color fills, border styles, size and position
  - Animate elements on a page
  - Apply styles for interactive states
  - and more...
  
#### How do you use CSS?

CSS is written in a plain text document with the .css file extension.
Link your css files to you HTML documents by adding the following to the head tag: 

`<link rel="stylesheet" href="styles.css">`

You can also write CSS inside the  `<style>` tag: 

```
<style>
  /* Your CSS styles here... */
</style>
```

Styles can also be added to any tag with the style attribute: 

`<h1 style="color: red">hello World</h1>`

### 2 - Create a style sheet, link it to a document

Linking to a file (first example) is the preferred method. 

[example-1.html](example-1.html)

### 3 - CSS syntax, Selectors, Properties, and values

CSS is defined as a collection of rules. Each rule is made up of a selector followed by a block:

```
selector { ...block... }
```

Inside the block you will define property and value pairs that set styles for the elements that match the selector. 
The following  sets the H1 to red, 36px, and Helvetica.

```
h1 {
  font-family: Helvetica;
  font-size: 36px;
  color: red;
}
```

The selector `h1` in this case targets all tags named h1. 

### 4 - Applying styles

Contunue with the previous example and apply some styles. 

#### Font styles

Use the  list of styles here to look up  each of the styles  below as you apply them. 

- Set the font-family of the h1 to Helvetica
- set the font-size of  the body tag to  18px
- Set the color of the body tag to 
- Set the H1 font-size in ems
- set the line-height
- color (font color)

####  Margin

- Set the margin-top and margin-bottom of the H1 and P tags
- Set the margin-left and margin-right of a wrapper 

#### Background  

- Set the  body background color 
- Set a background image
- Set the background size 
- Set the background position
- Set the background attachment

Set the background for the H1

- Set the background image
- Set the background repeat
- Set the background position

### 5 - Break

Take a break you 've earned it!

### 6 - Closer look at selectors

Selectors point to elements in the DOM. Selectors allow you to select one or more elements. 
There are many different types of selectors which allow you to select elements based on a wide variety of criteria. 

### 7 - Selector Quiz

Pair up and take the online quiz below. 

Learn the power of selectors take the Test: https://flukeout.github.io

### 8 - Use selectors effectively

There are many many selectors, some of which may seem confusing at this point. 
Don’t feel you have use them all. Your new secret super power: 

Revist the quiz page anytime you have a question about selectors

Your other new secret is that you don't need most  selectors. 
The following list of selectors you can select anything on the page with great flexibility.
Here are the most common selectors that you will use often:

- Tag selector
- Class selector
- Descendant selector
- Child selector

#### Styling links

There are many pseudo selectors that are useful for special occasions. For now it's probably best to familiarize yourself
with: 

- :link
- :visited
- :hover
- :active

__Note!__ Be sure to define these styles in this order! This will allow them to function best. 
You can think: LoVe and HAte to remember the order. 

### 9 - Style your work

There are hudnereds of CSS style properties. See the list for yourself: 
[https://developer.mozilla.org/en-US/docs/Web/CSS/Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference). 
Don't feel you need to know all of these yet. We will be looking at important CSS properties in future classes. 

- Style the HTML meta doc example 4
  - Challenge: Use only tag selectors along with descendant and child selectors
- Style your App page
  - Challenge: Use only class names
- Try these CSS style properties:
  - font-size
  - font-family
  - color (sets the color of text)
  - line-height
  - font-weight
  - background-color
  - background-image
  - background-size
  - Find some other properties and have fun!
  
#### Units

Except for a couple exceptions every value you declare must include a unit. Typical units are: 

- px - pixels
- pt - points (1/72 in)
- mm - millimeters
- cm - centimeters
- in - inches
- em - A unit equal to the current font size 
- % - Percent

#### Colors 

There are several ways to sepcify a color in CSS. 

Hex colors: 

`#57c409 - a mild green`

`#dddddd - light gray`

When the pairs repeat can be written as: 

`#ddd == #dddddd == #DDDDDD == #DDD`

Hex colors begin with the `#` followed by 3 or 6 digits. With each digit being a number between 0 and f. The first two 
digits represent the red component, the second two digits represent the green component, and the last two represent 
the blue component. 

RGB values can be used in this form: 

`rgb(74, 144, 226) -  a friendly  blue`

RGBA  rgb with an alpha component: 

`rgba(224, 67, 67, 0.5) -  red  50% transparent`

For more info on CSS colors take a look at these sites: 

- http://www.hexcolortool.com
- http://www.color-hex.com
- http://htmlcolorcodes.com
- https://developer.mozilla.org/en-US/docs/Web/CSS/color_value

Investigate color palettes here:

- https://color.adobe.com/create/color-wheel/

####  Simple rules for creating good typography

Have a clear typographic hierarchy. Visitors should know where to begin and what to do next. 
Choices should be clearly laid out. 

Make type that is comfortable to read.  Use line-height, and  constrast  to make your type more legible. 
Avoid overly saturated colors and harsh constrast. 

Avoid center aligned text. 

Limit the number of fonts to one, two, maybe three at most. 

## Projects 

Try to complete as many of these projects as you can. The more you practice the more you will 
learn and further your abilities! These projects continue the projects from the previous class. 

- Style your app page. 
  - Feel free to update your markup.
  - Add class names where you think they would be useful
  - Use the iTunes link maker to make a link and badge for your app: https://linkmaker.itunes.apple.com/en-us/
- Style the sample mark up from class. 
  - Set the font properties
    - Set the font family
    - Set the font size
    - Set the line height
    - Set the color
    - Try the text-shadow property
    - Investigate different ways of setting colors using hex values, and rgb, and rgba 
- For more practice try styling the other examples from class 1: 
  - 

## Resources 

- https://dash.generalassemb.ly
- https://www.codecademy.com/learn/web
- https://www.youtube.com/watch?v=x_0rE6ovWCI&list=PLoN_ejT35AEj4HJOkJK7nr4prSN0ZRT3H



