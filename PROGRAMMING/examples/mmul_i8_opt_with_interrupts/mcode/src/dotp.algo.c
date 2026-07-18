// arguments.


// A stripe of rows and an entire set of
// columns are processed by this function.
//
// It produces NROWS*NCOLS results which
// are written to the destination. 
//  
//  Let M=NROWS-1, N=NCOLS-1
//
// The rows and columns are streamed as
// follows
// Dot-args     R0 R0 .. R0      R1 ..  R1 ...      RM ... RM
//              C0 C1 .. CN      C0 ... CN	    C0 ... CN
// Write        W0 W1 ... WN ... WN+1 ...                  W(NM-1)
//
//
//
//      W0 W1 .. WRM    WRM+1.... WR2M ...      WR(N-1)M ... WRNM-1  increase linearly.
void dotp (
		uint64_t ROW_PTR_BASE,
		uint64_t COL_PTR_BASE,
		uint64_t DEST_PTR_BASE,
		uint64_t NROWS,
		uint64_t NCOLS,
		uint64_t NELEMENTS_PER_ROW_COL
		uint64_t ELEMENT_SIZE)
{
	ROW_BASE_ADDR   = ROW_PTR_BASE
	DEST_BASE_ADDR  = DEST_PTR_BASE
	for (ROW = 0; ROW < NROWS; ROW++)
	{
		COL_BASE_ADDR = COL_PTR_BASE
		for (COL = 0;  COL < NCOLS; COL++)
		{
			result   = dot_product(ROW_BASE_ADDR, COL_BASE_ADDR, NDWORDS);

			STORE (result, DEST_BASE_ADDR);

			COL_BASE_ADDR  += ROW_SIZE_IN_BYTES
			DEST_BASE_ADDR += 4;
		}
		ROW_BASE_ADDR  = (ROW_PTR_BASE + ROW_SIZE_IN_BYTES);
	}
}



