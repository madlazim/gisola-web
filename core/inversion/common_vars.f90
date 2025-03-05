MODULE COMMON_VARS

  USE PARAMETERS

  IMPLICIT NONE

!$OMP DECLARE TARGET TO(WEIG)
  REAL, DIMENSION(MAX_STATIONS, 3) :: WEIG
!$ACC DECLARE COPYIN(WEIG)

!$OMP DECLARE TARGET TO(FF1, FF2, FF3, FF4)
  REAL, DIMENSION(MAX_STATIONS)    :: FF1, FF2, FF3, FF4
!$ACC DECLARE COPYIN(FF1, FF2, FF3, FF4)

!$OMP DECLARE TARGET TO(ANDC, A2, B)
  REAL, DIMENSION(6)               :: ANDC, A2, B
!$ACC DECLARE COPYIN(ANDC, A2, B)

!$OMP DECLARE TARGET TO(DT)
  REAL :: DT
!$ACC DECLARE COPYIN(DT)

!$OMP DECLARE TARGET TO(NTM)
  INTEGER, DIMENSION(MAX_STATIONS) :: NTM
!$ACC DECLARE COPYIN(NTM)

!$OMP DECLARE TARGET TO(NR, NTIM, NMOM, ISUBMAX, IFIRST, ISTEP, ILAST, ERROR_ON_DEVICE)
  INTEGER :: NR, NTIM, NMOM, ISUBMAX, IFIRST, ISTEP, ILAST, ERROR_ON_DEVICE
!$ACC DECLARE COPYIN(NR, NTIM, NMOM, ISUBMAX, IFIRST, ISTEP, ILAST, ERROR_ON_DEVICE)

!$OMP DECLARE TARGET TO(STAT)
  LOGICAL, DIMENSION(MAX_STATIONS) :: STAT
!$ACC DECLARE COPYIN(STAT)

END MODULE COMMON_VARS

