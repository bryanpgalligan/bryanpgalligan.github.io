command <- c(
  "npx",  # Calls the Node Package Executor (npx) to run a package
  "staticrypt",  # The command to run the Staticrypt package, which encrypts static HTML files with a password
  "./docs/matrimony/*",  # Specifies the path to the files to encrypt (all files in the _output directory)
  "-r",  # Recursive flag to process files in subdirectories
  "-d", "./docs/matrimony",  # Sets the output directory for the encrypted files to the same _output directory
  "-p", '"HolyFamily"',  # Specifies the password to encrypt the files
  "--short",  # Generates a short URL-friendly hash
  "--template-color-primary", '"#6667AB"',  # Sets the primary color for the template
  "--template-color-secondary", '"#f9f9f3"',  # Sets the secondary color for the template
  "--template-title", '"Celebrating the Sacrament of Holy Matrimony"',  # Sets the title displayed on the encryption page
  "--template-instructions", '"Enter the "Password" or contact bgalligan@jesuits.org"',  # Sets the instructions shown to the user
  "--template-button", '"Access"'  # Sets the text on the button that the user clicks to unlock the document
)

system(paste(command, collapse = " "))