
# This command will randomly (except first and last entry) choose a subset of a fastq file:
# gzcat INPUT.fastq.gz | tr '\n' '&' | tr '@' '\n' | tail -n +2 | ghead -n -1 | rl -c NUMBER_ENTRIES+2 | tr '\n' '@' | tr '&' '\n' | tail -n +5 | ghead -n -5 | gzip > RESULTS.fastq.gz

gzcat mimseq_hek_1.fastq.gz | tr '\n' '&' | tr '@' '\n' | tail -n +2 | ghead -n -1 | rl -c 200002 | tr '\n' '@' | tr '&' '\n' | tail -n +5 | ghead -n -5 | gzip > mimseq_hek_1_sm.fastq.gz
gzcat mimseq_hek_2.fastq.gz | tr '\n' '&' | tr '@' '\n' | tail -n +2 | ghead -n -1 | rl -c 200002 | tr '\n' '@' | tr '&' '\n' | tail -n +5 | ghead -n -5 | gzip > mimseq_hek_2_sm.fastq.gz

gzcat mimseq_k562_1.fastq.gz | tr '\n' '&' | tr '@' '\n' | tail -n +2 | ghead -n -1 | rl -c 200002 | tr '\n' '@' | tr '&' '\n' | tail -n +5 | ghead -n -5 | gzip > mimseq_k562_1_sm.fastq.gz
gzcat mimseq_k562_2.fastq.gz | tr '\n' '&' | tr '@' '\n' | tail -n +2 | ghead -n -1 | rl -c 200002 | tr '\n' '@' | tr '&' '\n' | tail -n +5 | ghead -n -5 | gzip > mimseq_k562_2_sm.fastq.gz

