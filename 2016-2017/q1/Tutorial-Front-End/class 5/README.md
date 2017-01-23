# Front-end-Web-Class-5

## Objectives 

- Use CSS position to place things in a page 
- Use CSS transitions to make things move
- Build pages using position and transitions

## Schedule 

|   |   Time |    | Activity| Description |
|---|--------|----|---------|-------------|
| 1 |  5 min |  5 | TT      | Intro review CSS position |
| 2 |  5 min | 10 | TT      | CSS Transitions |
| 3 |  5 min | 15 | TT      | Font Awesome |
| 4 | 40 min | 55 | Work    | Position Challenge |
| 5 | 10 min | 65 | Break   | |
| 6 | 40 min |105 | Work    | Work on portfolio site |
| 7 |  5 min |110 | TT      | Wrap up |

## 1 - CSS Position absolute, relative, and fixed

CSS position property provides further control over the position of elements. 
Use position when you need more control over the position of an element. 

## 2 - CSS transition

The transition property creates animated effects with CSS. Here is an example:

```
.thing {
  background-color: blue;
  transition: 2s;
 }
 
 .thing:hover {
  background-color: red;
 }
```

Thing changes from blue to red in 2 seconds on hover. Thing also changes back to blue over 2 seconds when the hover ends. 

Time units can be: 

- s - seconds
- ms - milliseconds

### Transition Challenges

Recreate the examples...

## Challenges 
- Create a layout for your portfolio web site
  - Create at least three different versions, better do 6!
  - Use the 12 column grid
  - Create a Github repo for your work then post it to the class Slack channel
- Type Challenge
  - Create 4 examples of title and body copy
    - Use Google Fonts or other web fonts
    - Try using two different fonts one for the headline and another for the copy
    - Try using one font, but use a different style for the headline. 
      - Choose a font that has extra styles take a look at [Open Sans](https://fonts.google.com/specimen/Open+Sans)
     - The color, and background color, try using text-shadow (in a subtle way)
    - Challenge yourself further: 
      - For each font pair style 

## 3 - Font Awesome

Font Awesome is a great way to add icons to your project. Really this
is just a style sheet. You would have eventually done the same thing
if you worked at it long enough. Font Awesome also supplies all the art, 
which you would have found all of the internet if you spent anoung time. 

In short follow these steps:

- Register with Font Awesome and use Font Awesome from the CDN
    - Using the CDN provides a few advantages in download time and file management
    - Using the CDN won't work offline
- Link to Font Awesome in the head of your document
- Search the icons you want to use on the Font Awesome site 
    - Use the tag usually it will look something like:
        - `<i class="fa fa-envelope-o" aria-hidden="true"></i>`
    - Don't forget Font Awesome supplies icons at several sizes: 
        - 
```
<i class="fa fa-camera-retro fa-lg"></i> fa-lg
<i class="fa fa-camera-retro fa-2x"></i> fa-2x
<i class="fa fa-camera-retro fa-3x"></i> fa-3x
<i class="fa fa-camera-retro fa-4x"></i> fa-4x
<i class="fa fa-camera-retro fa-5x"></i> fa-5x
```
    - You can also set icons to fixed width. 
        - `<i class="fa fa-home fa-fw" aria-hidden="true">`

## 4 - Break

Take a break!

## 5 - Position challenges

Do your best to recreate the web pages shown here: 

- [challenge-1](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-1.html)
- [challenge-2](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-2.html)
- [challenge-3](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-3.html)
- [challenge-4](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-4.html)
- [challenge-5](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-5.html)
- [challenge-6](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-6.html)
- [challenge-7](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-7.html)
- [challenge-8](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-8.html)
- [challenge-9](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-9.html)
- [challenge-10](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-10.html)
- [challenge-11](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-11.html)
- [challenge-12](http://www.webdevils.com/make-school/front-end-web-class-5/challenges/challenge-12.html)

## 6 - Wrap up 

Here are some projects and challenegs to work on. 

- Post your work to the web. Take the web sites you created and post them to your web host. Pages might be:
  - Your App web site.
  - Your JS examples from classs.
 - Using the material from class 4 and 5 start building your portfolio page. Use Float and position to layout the page. 
  - Look at the designs your drew. Identify boxes that will block elements making up the page. 
  
  
  
  
  
