test_that("Summary.OUT",{

  withr::with_file("Summary.OUT",{
    write(
      c("*SUMMARY : KSAS8101WH N RESPONSE,KANSAS STATE  3FE(N)*2IR  (DSSAT3)                DSSAT Cropping System Model Ver. 4.8.0.024      -HEAD    MAR 21, 2023; 15:27:06",
        "", "!IDENTIFIERS......................... EXPERIMENT AND TREATMENT.......... SITE INFORMATION............................................................. DATES..................................................  DRY WEIGHT, YIELD AND YIELD COMPONENTS........................................   FRESH WEIGHT.........................  WATER...............................................  NITROGEN..................................................  PHOSPHORUS............  POTASSIUM.............  ORGANIC MATTER.................................................    WATER PRODUCTIVITY..................................................    NITROGEN PRODUCTIVITY...........  SEASONAL ENVIRONMENTAL DATA (Planting to harvest)..............",
        "@   RUNNO   TRNO R# O# P# CR MODEL... EXNAME.. TNAM..................... FNAM.... WSTA.... WYEAR SOIL_ID...             XLAT            LONG      ELEV    SDAT    PDAT    EDAT    ADAT    MDAT    HDAT   HYEAR  DWAP    CWAM    HWAM    HWAH    BWAH  PWAM    HWUM    H#AM    H#UM  HIAM  LAIX   FCWAM   FHWAM   HWAHF   FBWAH   FPWAM  IR#M  IRCM  PRCM  ETCM  EPCM  ESCM  ROCM  DRCM  SWXM  NI#M  NICM  NFXM  NUCM  NLCM  NIAM NMINC  CNAM  GNAM N2OEC  PI#M  PICM  PUPC  SPAM  KI#M  KICM  KUPC  SKAM  RECM  ONTAM   ONAM  OPTAM   OPAM   OCTAM    OCAM   CO2EC  CH4EC    DMPPM    DMPEM    DMPTM    DMPIM     YPPM     YPEM     YPTM     YPIM    DPNAM    DPNUM    YPNAM    YPNUM  NDCH TMAXA TMINA SRADA DAYLA   CO2A   PRCP   ETCP   ESCP   EPCP",
        "        1      1  1  0  1 WH CSCER048 KSAS8101 DRYLAND  - 0 KG N/HA      KSAS0001 KSAS8101  1981 IBWH980018            37.18          -99.75       226 1981279 1981289 1981294 1982141 1982174 1982174    1982    46    7703    2819    2819       0  3279  0.0244   11556    22.2 0.366   2.0     -99     -99     -99     -99     -99     0     0   600   425   191   234    12   113   141     1     0   -99    75   124    54    80    66    54 0.328   -99   -99   -99   -99   -99   -99   -99   -99     0   7842   7841      0      0   78994   78951    2550   0.00     13.3     18.9     40.4      -99      4.9      6.9     14.8      -99      -99    102.2      -99     37.4   245  13.1   1.2  12.4  12.6  340.7  579.8  408.0    -99    -99"
      ),
      "Summary.OUT"
    )

    smry <- DSSAT::read_dssat("Summary.OUT")

  })

  DSSAT:::test_cols_check(
    smry,
    char_cols = c("CR", "MODEL", "EXNAME", "TNAM", "FNAM", "WSTA", "SOIL_ID"),
    expected_vals = list(RUNNO = 1,
                         TRNO = 1,
                         "R#" = 1,
                         "O#" = 0,
                         "P#" = 1,
                         CR = "WH",
                         MODEL = "CSCER048",
                         EXNAME = "KSAS8101",
                         TNAM = "DRYLAND  - 0 KG N/HA",
                         FNAM = "KSAS0001",
                         WSTA = "KSAS8101",
                         WYEAR = 1981,
                         SOIL_ID = "IBWH980018",
                         XLAT = 37.18,
                         LONG = -99.75,
                         ELEV = 226,
                         SDAT = as.POSIXct("1981279",
                                           format = "%Y%j",
                                           tz = "UTC"),
                         PDAT = as.POSIXct("1981289",
                                           format = "%Y%j",
                                           tz = "UTC"),
                         EDAT = as.POSIXct("1981294",
                                           format = "%Y%j",
                                           tz = "UTC"),
                         ADAT = as.POSIXct("1982141",
                                           format = "%Y%j",
                                           tz = "UTC"),
                         MDAT = as.POSIXct("1982174",
                                           format = "%Y%j",
                                           tz = "UTC"),
                         HDAT = as.POSIXct("1982174",
                                           format = "%Y%j",
                                           tz = "UTC"),
                         HYEAR = 1982,
                         DWAP = 46,
                         CWAM = 7703,
                         HWAM = 2819,
                         HWAH = 2819,
                         BWAH = 0,
                         PWAM = 3279,
                         HWUM = 0.0244,
                         "H#AM" = 11556,
                         "H#UM" = 22.2,
                         HIAM = 0.366,
                         LAIX = 2,
                         FCWAM = NA_real_,
                         FHWAM = NA_real_,
                         HWAHF = NA_real_,
                         FBWAH = NA_real_,
                         FPWAM = NA_real_,
                         "IR#M" = 0,
                         IRCM = 0,
                         PRCM = 600,
                         ETCM = 425,
                         EPCM = 191,
                         ESCM = 234,
                         ROCM = 12,
                         DRCM = 113,
                         SWXM = 141,
                         "NI#M" = 1,
                         NICM = 0,
                         NFXM = NA_real_,
                         NUCM = 75,
                         NLCM = 124,
                         NIAM = 54,
                         NMINC = 80,
                         CNAM = 66,
                         GNAM = 54,
                         N2OEC = 0.328,
                         "PI#M" = NA_real_,
                         PICM = NA_real_,
                         PUPC = NA_real_,
                         SPAM = NA_real_,
                         "KI#M" = NA_real_,
                         KICM = NA_real_,
                         KUPC = NA_real_,
                         SKAM = NA_real_,
                         RECM = 0,
                         ONTAM = 7842,
                         ONAM = 7841,
                         OPTAM = 0,
                         OPAM = 0,
                         OCTAM = 78994,
                         OCAM = 78951,
                         CO2EC = 2550,
                         CH4EC = 0,
                         DMPPM = 13.3,
                         DMPEM = 18.9,
                         DMPTM = 40.4,
                         DMPIM = NA_real_,
                         YPPM = 4.9,
                         YPEM = 6.9,
                         YPTM = 14.8,
                         YPIM = NA_real_,
                         DPNAM = NA_real_,
                         DPNUM = 102.2,
                         YPNAM = NA_real_,
                         YPNUM = 37.4,
                         NDCH = 245,
                         TMAXA = 13.1,
                         TMINA = 1.2,
                         SRADA = 12.4,
                         DAYLA = 12.6,
                         CO2A = 340.7,
                         PRCP = 579.8,
                         ETCP = 408,
                         ESCP = NA_real_,
                         EPCP = NA_real_)
    )

})
