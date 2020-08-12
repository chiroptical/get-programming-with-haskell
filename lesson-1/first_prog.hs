-- ...

--toPart recipient = "Dear " ++ recipient ++ ",\n"
toPart _ = "To Whom It May Concern,\n"

bodyPart bookTitle = "I appreciate your support for purchasing " ++ bookTitle ++ ".\n"

fromPart author = "Sincerly,\n" ++ author

createEmail recipient bookTitle author =
  toPart recipient ++ bodyPart bookTitle ++ fromPart author

messyMain :: IO ()
messyMain = do
   print "Who is the email for?"
   recipient <- getLine
   print "What is the Title?"
   title <- getLine
   print "Who is the Author?"
   author <- getLine
   print (createEmail recipient title author)

main = messyMain
