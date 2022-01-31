DECLARE @SequenceStart DateTime2(0) = GETDATE()

SELECT @SequenceStart
SELECT DATEADD( SECOND,
				DATEPART(SECOND,@SequenceStart) / 10 * 10,
				DATEADD(SECOND,-DATEPART(SECOND,@SequenceStart),@SequenceStart) 
				)
