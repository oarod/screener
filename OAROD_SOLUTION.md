Naive implementation
==

This branch focused on getting a working solution a-la red-green-refactor.

Table headers are now customized per category so we must replace the table as a whole.

Pass the category back to the view to call the right partial.

Turbolinks
==

Turbolinks gets a bad wrap. I for one appreciate what it does for us. In this case especially, I think it's a perfect fit.

We were replacing almost the entire view manually via JS. We will now allow Turbolinks to handle this for us, while simplifying our logic.


We now have no written JS, and no special handling in the controller.

Changed category form to links, while maintaining AJAX behavior courtesy of Turbolinks.

Moved script calls to bottom of body so we don't block rendering.

Datagrid
==

At this point I attempted to use the wice_grid gem for sorting and pagination. However, it was throwing errors with regard to rails 5 action parameters updates.

I was able to get it working by using a version directly from github, as there had been some PRs with rails 5 updates

Extensibility
==

Going forward we may want to have separate controllers per category to assure configurability.
