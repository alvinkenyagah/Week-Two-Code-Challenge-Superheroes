# Week-Two-Code-Challenge-Superheroes
## Description
For this project, I'll be working on an API for tracking heroes and their superpowers.

## Models
- A `Hero` has many `Power`s through `HeroPower`
- A `Power` has many `Hero`s through `HeroPower`
- A `HeroPower` belongs to a `Hero` and belongs to a `Power`
  
## Routes
The following routes return JSON data in the format specified along with the appropriate HTTP verb.

#### GET /heroes 
Return JSON data in the format below:

[  

{ "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },  

{ "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },  

{ "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }

]

#### GET /heroes/:id
If the `Hero` exists, return JSON data in the format below:

{

  "id": 1,

  "name": "Kamala Khan",

  "super_name": "Ms. Marvel",

  "powers": [

    {

      "id": 1,

      "name": "super strength",

      "description": "gives the wielder super-human strengths"

    },

    {

      "id": 2,

      "name": "flight",

      "description": "gives the wielder the ability to fly through the skies at supersonic speed"

    }

  ]

}

If the `Hero` does not exist, return the following JSON data, along with

the appropriate HTTP status code:

{   "error": "Hero not found" }

#### GET /powers

Return JSON data in the format below:

[

  {

    "id": 1,

    "name": "super strength",

    "description": "gives the wielder super-human strengths"

  },

  {

    "id": 1,

    "name": "flight",

    "description": "gives the wielder the ability to fly through the skies at supersonic speed"

  }

]

#### GET /powers/:id

If the `Power` exists, return JSON data in the format below:

```

{

  "id": 1,

  "name": "super strength",

  "description": "gives the wielder super-human strengths"

}

```

If the `Power` does not exist, return the following JSON data, along with

the appropriate HTTP status code:

```

{

  "error": "Power not found"

}

```
#### PATCH /powers/:id

This route should update an existing `Power`. It should accept an object with

the following properties in the body of the request:

```

{

  "description": "Updated description"

}

```

If the `Power` exists and is updated successfully (passes validations), update

its description and return JSON data in the format below:

```

{

  "id": 1,

  "name": "super strength",

  "description": "Updated description"

}

```

If the `Power` does not exist, return the following JSON data, along with

the appropriate HTTP status code:

```

{

  "error": "Power not found"

}

```

If the `Power` is **not** updated successfully (does not pass validations),

return the following JSON data, along with the appropriate HTTP status code:

```

{

  "errors": ["validation errors"]

}

```


#### POST /hero_powers

This route creates a new `HeroPower` that is associated with an

existing `Power` and `Hero`. It accepts an object with the following

properties in the body of the request:

```

{

  "strength": "Average",

  "power_id": 1,

  "hero_id": 3

}

```

If the `HeroPower` is created successfully, send back a response with the data

related to the `Hero`:

```

{

  "id": 1,

  "name": "Kamala Khan",

  "super_name": "Ms. Marvel",

  "powers": [

    {

      "id": 1,

      "name": "super strength",

      "description": "gives the wielder super-human strengths"

    },

    {

      "id": 2,

      "name": "flight",

      "description": "gives the wielder the ability to fly through the skies at supersonic speed"

    }

  ]

}

```

If the `HeroPower` is **not** created successfully, return the following

JSON data, along with the appropriate HTTP status code:

```

{

  "errors": ["validation errors"]

}

```

### MIT License

Copyright (c) 2023 alvinkenyagah

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
