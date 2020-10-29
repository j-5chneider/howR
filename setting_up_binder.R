library(holepunch)
# I skipped this step because it gave me an error and copied the DESCRIPTION file myself
write_compendium_description(package = 'R Introduction', 
                             description = 'This is for the workshop of an introduction to R.')

write_dockerfile(maintainer = "Juergen") 

generate_badge() 

build_binder()



############################## #
##
## ALTERNATIVE WAY
##
############################## #

# Note that this particular approach will be super slow.
# And take just as long everytime you edit your code
library(holepunch)
write_install() # Writes install.R with all your dependencies
write_runtime() # Writes the date your code was last modified. Can be overridden.
generate_badge() # Generates a badge you can add to your README. Clicking badge will launch the Binder.
# ----------------------------------------------
# At this time push the code to GitHub
# ----------------------------------------------
# Then click the badge on your README or run
build_binder() # to kick off the build process