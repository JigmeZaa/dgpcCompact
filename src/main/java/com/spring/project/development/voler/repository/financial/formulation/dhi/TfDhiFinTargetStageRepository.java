package com.spring.project.development.voler.repository.financial.formulation.dhi;

import com.spring.project.development.voler.entity.financial.formulation.dhi.TfDhiFinTargetStage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TfDhiFinTargetStageRepository extends JpaRepository<TfDhiFinTargetStage, String> {
    TfDhiFinTargetStage findTop1ByYearAndCompanyIdOrderByCreatedDateDesc(String year, String companyId);
}
