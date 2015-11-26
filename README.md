
# Basic Nested Forms Lab

## Objectives

1. Construct a nested params hash with data about the primary object and a belongs to and has many association.
2. Use the conventional key names for associated data (assoication_attributes).
3. Name form inputs correctly to create a nested params hash with belongs to and has many associated data.
4. Define a conventional association writer for the primary model to properly instantiated associations based on the nested params association data.
5. Define a custom association writer for the primary model to properly instantiated associations with custom logic (like unique by name) on the nested params association data.
5. Use fields_for to generate the association fields.

## Notes

We'll give them the initial models with no associations and only the controller actions and views for show and index. they have to build new/index, create the migrations for the correct associations and wire up the models. they'll have to build the new form also.

domain: recipe with ingredients

build a new recipe form that accepts nested attributes for ingredients with quantites and name and the recipe also has a name. this is flexing has_many where a recipe has many ingredients and ingredients have quanity and na e so a form where you can add arbitrary amount of ingredients naming them and giving them quantities. they should use fields_for and accepts_nested attributes_for here. we can also give them the javascript that will add a new ingredient to the form based on finding the correctly named fields and copying them (that is to say if they use fields_for correctly we can write JS around that to duplicate the ingredient fields so they can see the magic)

domain: posts with an author

this is about using a custom attribute writer author_attributes= where a post needs an author by name in a form and the authors should be unique.

provide an authors show and index view that we can test against for unique authors - as in, in our tests, when we submit a post with an author by name the author show page should reflect that post and the index page should not duplicate the author listsing. 1 unique author. 
