
# Basic Nested Forms Lab

## Objectives

1. Construct a nested params hash with data about the primary object and a belongs to and has many association.
3. Name form inputs correctly to create a nested params hash with belongs to and has many associated data.
4. Define a conventional association writer for the primary model to properly instantiated associations based on the nested params association data.
5. Define a custom association writer for the primary model to properly instantiated associations with custom logic (like unique by name) on the nested params association data.
5. Use fields_for to generate the association fields.

## Data Model: Recipe with ingredients

The first data model we're going to be working with today is a recipe with ingredients.

  * Recipe
    * has many ingredients
    * title:string    
  * Ingredient
    * belongs to a recipe
    * ingredient.name: string
    * ingredient.quantity: string

The models and show routes and associations have been set up for you.

### Instructions

2. Build a recipe form that accepts ten ingredients! It should automatically
   create the new `Ingredient` objects.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/basic-nested-forms-lab' title='Basic Nested Forms Lab'>Basic Nested Forms Lab</a> on Learn.co and start learning to code for free.</p>
