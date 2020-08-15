# if you want an action to be applied to a range of records
# you combine two expressions with a comma. The action is applied
# beginning with a record that matches the first pattern and continuing
# through a record that matches the second one.

/married/,/lowercase/{ print $0; }

# the above will print records starting from the one with the word 'married'
# all the way to the one with 'lowercase'


