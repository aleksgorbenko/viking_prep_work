
PROGRAM DisplayPagination:
    N = current page
    N = can only be integer
    GET the total number of pages
        IF the total number of pages = 1
            Display "1" with no link
        END

        IF the total number of pages < 5
            Display the "Previous" word or link
            Display all page numbers with links
            Display the current page with no link
            Display the "Next" word or link
    ELSE
        Display the "Previous" word or link
        For EACH number in the list of pages DO
            Display "FirstTwoPages" THEN
                IF DisplayEllipse: true, THEN
                    Display "Ellipse"
                ELSE
                    Continue
                        Display "PreviousPageNumber" THEN
                            Display the current page with no link to it THEN
                        Display "NextPageNumber" THEN
                IF DisplayEllipse: true, THEN
                    Display "Ellipse"
                ELSE
                    Continue
            Display "LastTwoPages"  
    END
    Display the "Next" word or link
END




PROGRAM DisplayPreviousWordOrLink:
    IF the N is the first page THEN
        Print the word "Previous"
    ELSE
        Print the word "Previous" with a link to the previous page
    END
END


PROGRAM DisplayNextWordOrLink:
    IF the N is the last page THEN
        Print the word "Next"
    ELSE
        Print the word "Next" with a link to the next page
    END
END

# first or last 2 pages will be displayed with total pages > or = 8 

PROGRAM DisplayFirstTwoPages:
    IF (total number of pages > 5 OR total number of pages = 5) DO
        Display first and second page numbers with links
    END

    IF the (N is > 5 or N = 5) pages away from the first page THEN
        Display first and second page numbers with links
    END
END

PROGRAM DisplayLastTwoPages:
     IF (total number of pages > 5 OR total number of pages = 5) DO
        Display pre-last and last page number with links
    END
    
    IF the (N > 5 or N = 5) pages away from the last page THEN
        Display pre-last and last page number with links
    END
END


PROGRAM DisplayPreviousPageNumber:
    IF the total number of pages is > 2 AND
        (N = the first page?) = FALSE, THEN
            Display the (N-1) page before N with the link to N-1 page
    END
END

PROGRAM DisplayNextPageNumber:
    IF the total number of pages is > 2 AND
        (N = the last page?) = FALSE, THEN
            Display the (N+1) page after N with the link to N+1 page
    END
END



PROGRAM DisplayEllipse:
    IF the total number of pages is > 5 AND
        distance between the first page and N is > 4 THEN
            Display "..." with the link instead of all page numbers between "FirstTwoPages" and "PreviousPageNumber"
        END
    END

    IF the total number of pages is > 5 AND
        distance between the N page and last page is > 4 THEN
            Display "..." with the link instead of all page numbers between "NextPageNumber" and "LastTwoPages"
        END
    END

    IF the total number of pages = 5 AND
        IF N = last page or first page THEN
        DisplayEllipse instead of page "3"
    ELSE
        Continue
        END
    END
END

 