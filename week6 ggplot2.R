#Part 3 aesthetics
library(datasets)
mtcars
library(ggplot2)
# part 1
# Map cyl to y
ggplot(mtcars,aes(x=mpg,y=cyl))+geom_point()


# Map cyl to x
ggplot(mtcars,aes(x=cyl,y=mpg))+ geom_point()


# Map cyl to col
ggplot(mtcars, aes(x=wt, y=mpg, col=cyl))+geom_point()


# Change shape and size of the points in the above plot
ggplot(mtcars, aes(x=wt, y=mpg, col=cyl))+geom_point(shape=1, size=4)


# part 2
# Given from the previous exercise
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
  geom_point(shape = 1, size = 4)

# Map cyl to fill
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
  geom_point()


# Change shape, size and alpha of the points in the above plot
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
  geom_point(shape = 16, size = 6, alpha=0.6)


#part 3
# Map cyl to size
ggplot(mtcars, aes(wt,mpg,size= cyl)) +geom_point()


# Map cyl to alpha
ggplot(mtcars, aes(wt,mpg,alpha= cyl)) +geom_point()


# Map cyl to shape 
ggplot(mtcars, aes(wt, mpg, shape =cyl)) +geom_point()


# Map cyl to labels
ggplot(mtcars, aes(wt, mpg,label =cyl)) +geom_text()


#part 4
# Define a hexadecimal color
my_color <- "#123456"

# Set the color aesthetic 
ggplot(mtcars,aes(x=wt,y=mpg,col=cyl))+geom_point()


# Set the color aesthetic and attribute 
ggplot(mtcars,aes(wt,mpg,col=cyl))+geom_point(col=my_color)


# Set the fill aesthetic and color, size and shape attributes
ggplot(mtcars,aes(wt,mpg,fill=cyl))+geom_point(size=10,shape=23,col=my_color)


#part 5
# Expand to draw points with alpha 0.5
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) + geom_point(alpha=0.5)


# Expand to draw points with shape 24 and color yellow
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) + geom_point(shape=24,col="yellow")


# Expand to draw text with label x, color red and size 10
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl))+geom_text(label="x",col="red",size=10)


#part 6
# Map mpg onto x, qsec onto y and factor(cyl) onto col
ggplot(mtcars,aes(mpg,qsec,col=factor(cyl)))+geom_point()


# Add mapping: factor(am) onto shape
ggplot(mtcars,aes(mpg,qsec,col=factor(cyl),shape=factor(am))) + geom_point()


# Add mapping: (hp/wt) onto size
ggplot(mtcars,aes(mpg,qsec,col=factor(cyl),shape=factor(am),size=(hp/wt))) + geom_point()


#part 7
# The base layer, cyl.am, is available for you
# Add geom (position = "stack" by default)
cyl.am + 
  geom_bar(position="stack")

# Fill - show proportion
cyl.am + 
  geom_bar(position = "fill")  

# Dodging - principles of similarity and proximity
cyl.am +
  geom_bar(position = "dodge") 

# Clean up the axes with scale_ functions
val = c("#E41A1C", "#377EB8")
lab = c("Manual", "Automatic")
cyl.am +
  geom_bar(position = "dodge") +
  scale_x_discrete("Cylinders") + 
  scale_y_continuous("Number") +
  scale_fill_manual("Transmission", 
                    values = val,
                    labels = lab) 


# part 8
# Add a new column called group
mtcars$group <- 0

# Create jittered plot of mtcars: mpg onto x, group onto y
ggplot(mtcars, aes(x=mpg,y=group)) + geom_jitter()

# Change the y aesthetic limits
ggplot(mtcars, aes(x=mpg,y=group)) + geom_jitter() +scale_y_continuous(limits = c(-2,2))


#part 9
# Basic scatter plot: wt on x-axis and mpg on y-axis; map cyl to col
ggplot(mtcars, aes(wt,mpg,col=cyl))+geom_point(size=4)


# Hollow circles - an improvement
ggplot(mtcars, aes(wt,mpg,col=cyl))+geom_point(size=4,shape=1)


# Add transparency - very nice
ggplot(mtcars, aes(wt,mpg,col=cyl))+geom_point(size=4,alpha=0.6)


#part 10
# Scatter plot: carat (x), price (y), clarity (col)
ggplot(diamonds, aes(carat, price, col=clarity)) + geom_point()


# Adjust for overplotting
ggplot(diamonds, aes(carat, price, col=clarity)) + geom_point(alpha= 0.5)


# Scatter plot: clarity (x), carat (y), price (col)
ggplot(diamonds, aes(clarity, carat, col=price)) + geom_point(alpha= 0.5)


# Dot plot with jittering
ggplot(diamonds, aes(clarity, carat, col=price)) + geom_point(position="jitter",alpha= 0.5)


#Part 4 three types of plotting: scatter plots,bar plots, and line plots
#type 1: scatter plots(jitter,abline(add straight line to a plot))
#part1
# Plot the cyl on the x-axis and wt on the y-axis
ggplot(mtcars, aes(cyl, wt)) +geom_point()


# Use geom_jitter() instead of geom_point()
ggplot(mtcars, aes(cyl, wt)) +geom_jitter()


# Define the position object using position_jitter(): posn.j
posn.j = position_jitter(0.1)

# Use posn.j in geom_point()
ggplot(mtcars, aes(cyl, wt)) + geom_point(position =posn.j)


#part2
# Examine the structure of Vocab
str(Vocab)

# Basic scatter plot of vocabulary (y) against education (x). Use geom_point()
ggplot(Vocab, aes(education, vocabulary)) + geom_point()


# Use geom_jitter() instead of geom_point()
ggplot(Vocab, aes(education, vocabulary)) + geom_jitter()


# Using the above plotting command, set alpha to a very low 0.2
ggplot(Vocab, aes(education, vocabulary)) + geom_jitter(alpha =0.2)


# Using the above plotting command, set the shape to 1
ggplot(Vocab, aes(education, vocabulary)) + geom_jitter(alpha =0.2, shape=1)


#type 2: bar plots (histogram, bar, errorbar)
#part1
# Make a univariate histogram
ggplot(mtcars,aes(mpg))+geom_histogram()


# Change the bin width to 1
ggplot(mtcars,aes(mpg))+geom_histogram(binwidth=1)


# Change the y aesthetic to density
ggplot(mtcars,aes(mpg))+geom_histogram(aes(y=..density..), binwidth=1)


# Custom color code
myBlue <- "#377EB8"

# Change the fill color to myBlue
ggplot(mtcars,aes(x=mpg))+geom_histogram(aes(y=..density..), binwidth=1,fill=myBlue)


#part2
#Three position arguments will be introduced here:  
#- stack: place the bars on top of each other. Counts are used. 
#- fill: place the bars on top of each other, but this time use proportions. 
#- dodge: place the bars next to each other. Counts are used.
# Draw a bar plot of cyl, filled according to am
ggplot(mtcars,aes(x = cyl, fill = am))+geom_bar()


# Change the position argument to stack
ggplot(mtcars,aes(x = cyl, fill = am))+geom_bar(position = "stack")


# Change the position argument to fill
ggplot(mtcars,aes(x = cyl, fill = am))+geom_bar(position = "fill")


# Change the position argument to dodge
ggplot(mtcars,aes(x = cyl, fill = am))+geom_bar(position = "dodge")


#part3
# Draw a bar plot of cyl, filled according to am
ggplot(mtcars, aes(cyl, fill=am)) + geom_bar()

# Change the position argument to "dodge"
ggplot(mtcars, aes(cyl, fill=am)) + geom_bar(position ="dodge")

# Define posn_d with position_dodge()
posn_d =position_dodge(0.2)

# Change the position argument to posn_d
ggplot(mtcars, aes(cyl, fill=am)) + geom_bar(position = posn_d)

# Use posn_d as position and adjust alpha to 0.6
ggplot(mtcars, aes(cyl, fill=am)) + geom_bar(position = posn_d, alpha=0.6)


#part4
# A basic histogram, add coloring defined by cyl 
ggplot(mtcars, aes(mpg,fill=cyl)) +
  geom_histogram(binwidth = 1)

# Change position to identity 
ggplot(mtcars, aes(mpg, fill=cyl)) +
  geom_histogram(binwidth = 1, position="identity")

# Change geom to freqpoly (position is identity by default) 
ggplot(mtcars, aes(mpg, col=cyl)) + geom_freqpoly(binwidth=1)


#part5
# Example of how to use a brewed color palette
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar() +
  scale_fill_brewer(palette = "Set1")

# Use str() on Vocab to check out the structure
str(Vocab)

# Plot education on x and vocabulary on fill
# Use the default brewed color palette
ggplot(Vocab, aes(education, fill=vocabulary)) + geom_bar(position="fill") + scale_fill_brewer()


#part6
# Final plot of last exercise
ggplot(Vocab, aes(x = education, fill = vocabulary)) +
  geom_bar(position = "fill") +
  scale_fill_brewer()

# Definition of a set of blue colors
blues <- brewer.pal(9, "Blues")

# Make a color range using colorRampPalette() and the set of blues
blue_range <- colorRampPalette(blues)

# Use blue_range to adjust the color of the bars, use scale_fill_manual()
ggplot(Vocab, aes(x = education, fill = vocabulary)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = blue_range(11))


#part7
# Basic histogram plot command
ggplot(mtcars, aes(mpg)) + 
  geom_histogram(binwidth = 1)

# Expand the histogram to fill using am
ggplot(mtcars, aes(mpg,fill=am)) + 
  geom_histogram(binwidth = 1)


# Change the position argument to "dodge"
ggplot(mtcars, aes(mpg,fill=am)) + 
  geom_histogram(binwidth = 1,position = "dodge")


# Change the position argument to "fill"
ggplot(mtcars, aes(mpg,fill=am)) + 
  geom_histogram(binwidth = 1,position = "fill")


# Change the position argument to "identity" and set alpha to 0.4
ggplot(mtcars, aes(mpg,fill=am)) + 
  geom_histogram(binwidth = 1,position = "identity",alpha=0.4)


# Change fill to cyl
ggplot(mtcars, aes(mpg,fill=cyl)) + 
  geom_histogram(binwidth = 1,position = "identity",alpha=0.4)



#type 3: line plots
#part1
# Print out head of economics
head(economics)

# Plot unemploy as a function of date using a line plot
ggplot(economics, aes(x = date, y = unemploy)) + geom_line()


# Adjust plot to represent the fraction of total population that is unemployed
ggplot(economics, aes(x = date, y = unemploy/pop)) + geom_line()


#part2
# Expand the following command with geom_rect() to draw the recess periods
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_rect(data=recess, inherit.aes=FALSE,aes(xmin=begin, xmax=end, ymin=-Inf, ymax=+Inf),fill= "red", alpha=0.2) +
  geom_line()


#part3
# Check the structure as a starting point
str(fish.species)

# Use gather to go from fish.species to fish.tidy
fish.tidy <- gather(fish.species, Species, Capture, -Year)


#part4
# Recreate the plot shown on the right
ggplot(fish.tidy, aes(x = Year, y = Capture, col= Species)) + geom_line()



#Part 5 qplot and wrap-up
#part 1
# The old way (shown)
plot(mpg ~ wt, data = mtcars)

# Using ggplot:
ggplot(mtcars,aes(wt,mpg)) + geom_point()

# Using qplot:
qplot(wt,mpg,data=mtcars)


#part 2
# basic scatter plot:
qplot(wt,mpg,data=mtcars)

# Categorical:
# cyl
qplot(wt,mpg,data=mtcars,size=cyl)

# gear
qplot(wt,mpg,data=mtcars,size=gear)

# Continuous
# hp
qplot(wt,mpg,data=mtcars,col=hp)

# qsec
qplot(wt,mpg,data=mtcars,col=qsec)


#part3
# qplot() with x only
qplot(factor(cyl),data=mtcars)

# qplot() with x and y
qplot(factor(cyl),factor(vs),data=mtcars)

# qplot() with geom set to jitter manually
qplot(factor(cyl),factor(vs),data=mtcars,geom="jitter")


#part4
# Make a dot plot with ggplot
ggplot(mtcars, aes(cyl, wt, fill = factor(am))) + geom_dotplot(stackdir="center",binaxis="y")

# qplot with geom "dotplot", binaxis = "y" and stackdir = "center"
qplot(cyl, wt, data = mtcars, fill = factor(am), geom=c("dotplot"), binaxis = "y",stackdir = "center")


#part5
# ChickWeight is available in your workspace

# Check out the head of ChickWeight
head(ChickWeight)

# Use ggplot() for the second instruction
ggplot(ChickWeight,aes(Time,weight))+geom_line(aes(group=Chick))


# Use ggplot() for the third instruction
ggplot(ChickWeight,aes(Time,weight,col=Diet))+geom_line(aes(group=Chick))


# Use ggplot() for the last instruction
ggplot(ChickWeight,aes(Time,weight,color=Diet))+geom_line(aes(group=Chick),alpha=0.3)+geom_smooth(lwd=2,se=FALSE)


#part6
# titanic is avaliable in your workspace

# Check out the structure of titanic
str(titanic)

# Use ggplot() for the first instruction
ggplot(titanic, aes(factor(Pclass), fill = factor(Sex))) + geom_bar(position ="dodge")

# Use ggplot() for the second instruction
ggplot(titanic, aes(factor(Pclass), fill = factor(Sex))) + geom_bar(position ="dodge") + facet_grid(". ~Survived")

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
ggplot(titanic, aes(factor(Pclass), Age, col = factor(Sex))) + geom_jitter(size = 3, alpha= 0.5, position =posn.j) + facet_grid(". ~Survived")



