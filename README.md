# Ada Off-by-One Error Example

This repository demonstrates a common off-by-one error in Ada when accessing array elements. The error occurs because the loop attempts to access an element beyond the valid range of the array index.  This leads to a `Constraint_Error` exception.

The `bug.ada` file contains the erroneous code, and `bugSolution.ada` provides the corrected version.

**Key Learning:** Pay close attention to array indexing boundaries in Ada and other programming languages to avoid off-by-one errors.  Always double check loop conditions and array access expressions to ensure they correctly handle the first and last elements.
