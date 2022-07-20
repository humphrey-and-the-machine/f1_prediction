SELECT TOP 10000000
        p.objid, p.ra, p.dec, s.z AS Redshift,
  p.fiberMag_u, p.petroMag_u,p.modelMag_u,p.psfMag_u,
  p.fiberMag_g, p.petroMag_g,p.modelMag_g,p.psfMag_g,
  p.fiberMag_r, p.petroMag_r,p.modelMag_r,p.psfMag_r,
  p.fiberMag_i, p.petroMag_i,p.modelMag_i,p.psfMag_i,
  p.fiberMag_z, p.petroMag_z,p.modelMag_z,p.psfMag_z,
  s.class into myDB.sdss_test_large
    
        FROM dr15.PhotoObjAll AS p JOIN dr15.specObjAll s ON s.bestobjid = p.objid
        WHERE p.mode = 1 AND s.sciencePrimary = 1 AND p.clean = 1
        ORDER BY p.objid ASC
