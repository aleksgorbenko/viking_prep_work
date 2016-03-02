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

