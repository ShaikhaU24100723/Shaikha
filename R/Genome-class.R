setClass("Genome",
         slots = list(
           genome_name = "character",
           total_number_of_chromosomes = "numeric",
           total_number_of_proteins = "numeric"
         ))

setGeneric("avgProteinPerCh", function(object) standardGeneric("avgProteinPerCh"))
setMethod("avgProteinPerCh", "Genome",
          function(object) {
            avg = object@total_number_of_proteins / object@total_number_of_chromosomes
            return(round(avg))
          })
