.class public Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;
.super Ljava/lang/Object;
.source "CampaignGroupModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CampaignsEntity"
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field AgencyId:I

.field AgencyName:Ljava/lang/String;

.field Caption:Ljava/lang/String;

.field CategoryId:I

.field CategoryName:Ljava/lang/String;

.field CategorySequence:I

.field CrossAppCampaignId:Ljava/lang/String;

.field CurrentDate:I

.field DayProceed:I

.field DayRemain:I

.field Discount:F

.field ExpireDate:I

.field Extra:Ljava/lang/String;

.field FullImageUrl:Ljava/lang/String;

.field HasCrossApp:Z

.field ID:I

.field IsCheckUserCampaignPermission:Ljava/lang/String;

.field IsConditionPass:Z

.field IsSponsor:Z

.field Like:I

.field MasterCampaignId:Ljava/lang/String;

.field ModifyDate:I

.field Name:Ljava/lang/String;

.field NextRedeemDate:Ljava/lang/String;

.field OriginalPrice:I

.field OtherPointPerUnit:I

.field ParentCategoryId:Ljava/lang/String;

.field PointPerUnit:I

.field PointType:Ljava/lang/String;

.field PricePerUnit:F

.field Qty:I

.field RankVote:Ljava/lang/String;

.field Rating:Ljava/lang/String;

.field RedeemCount:Ljava/lang/String;

.field RedeemMedia:I

.field RedeemMostPerPerson:I

.field TracesJson:Ljava/lang/String;

.field Type:I

.field UserLevel:Ljava/lang/String;

.field UserVisibility:Ljava/lang/String;

.field Vote:I

.field Website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgencyId()I
    .registers 2

    .prologue
    .line 511
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->AgencyId:I

    return v0
.end method

.method public getAgencyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->AgencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Caption:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategoryId:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategorySequence()I
    .registers 2

    .prologue
    .line 375
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategorySequence:I

    return v0
.end method

.method public getCrossAppCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CrossAppCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDate()I
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CurrentDate:I

    return v0
.end method

.method public getDayProceed()I
    .registers 2

    .prologue
    .line 443
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->DayProceed:I

    return v0
.end method

.method public getDayRemain()I
    .registers 2

    .prologue
    .line 507
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->DayRemain:I

    return v0
.end method

.method public getDiscount()F
    .registers 2

    .prologue
    .line 435
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Discount:F

    return v0
.end method

.method public getExpireDate()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ExpireDate:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Extra:Ljava/lang/String;

    return-object v0
.end method

.method public getFullImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->FullImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ID:I

    return v0
.end method

.method public getIsCheckUserCampaignPermission()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsCheckUserCampaignPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getLike()I
    .registers 2

    .prologue
    .line 467
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Like:I

    return v0
.end method

.method public getMasterCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->MasterCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyDate()I
    .registers 2

    .prologue
    .line 387
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ModifyDate:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRedeemDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->NextRedeemDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()I
    .registers 2

    .prologue
    .line 371
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->OriginalPrice:I

    return v0
.end method

.method public getOtherPointPerUnit()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->OtherPointPerUnit:I

    return v0
.end method

.method public getParentCategoryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ParentCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getPointPerUnit()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PointPerUnit:I

    return v0
.end method

.method public getPointType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PointType:Ljava/lang/String;

    return-object v0
.end method

.method public getPricePerUnit()F
    .registers 2

    .prologue
    .line 503
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PricePerUnit:F

    return v0
.end method

.method public getQty()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Qty:I

    return v0
.end method

.method public getRankVote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RankVote:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Rating:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemCount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemCount:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemMedia()I
    .registers 2

    .prologue
    .line 499
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemMedia:I

    return v0
.end method

.method public getRedeemMostPerPerson()I
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemMostPerPerson:I

    return v0
.end method

.method public getTracesJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->TracesJson:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Type:I

    return v0
.end method

.method public getUserLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->UserLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVisibility()Ljava/lang/String;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->UserVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public getVote()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Vote:I

    return v0
.end method

.method public getWebsite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Website:Ljava/lang/String;

    return-object v0
.end method

.method public isHasCrossApp()Z
    .registers 2

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->HasCrossApp:Z

    return v0
.end method

.method public isIsConditionPass()Z
    .registers 2

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsConditionPass:Z

    return v0
.end method

.method public isIsSponsor()Z
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsSponsor:Z

    return v0
.end method

.method public setAgencyId(I)V
    .registers 2
    .param p1, "AgencyId"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->AgencyId:I

    .line 344
    return-void
.end method

.method public setAgencyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "AgencyName"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->AgencyName:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .registers 2
    .param p1, "Caption"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Caption:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setCategoryId(I)V
    .registers 2
    .param p1, "CategoryId"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategoryId:I

    .line 244
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .registers 2
    .param p1, "CategoryName"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategoryName:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setCategorySequence(I)V
    .registers 2
    .param p1, "CategorySequence"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CategorySequence:I

    .line 208
    return-void
.end method

.method public setCrossAppCampaignId(Ljava/lang/String;)V
    .registers 2
    .param p1, "CrossAppCampaignId"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CrossAppCampaignId:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setCurrentDate(I)V
    .registers 2
    .param p1, "CurrentDate"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->CurrentDate:I

    .line 260
    return-void
.end method

.method public setDayProceed(I)V
    .registers 2
    .param p1, "DayProceed"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->DayProceed:I

    .line 276
    return-void
.end method

.method public setDayRemain(I)V
    .registers 2
    .param p1, "DayRemain"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->DayRemain:I

    .line 340
    return-void
.end method

.method public setDiscount(F)V
    .registers 2
    .param p1, "Discount"    # F

    .prologue
    .line 267
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Discount:F

    .line 268
    return-void
.end method

.method public setExpireDate(I)V
    .registers 2
    .param p1, "ExpireDate"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ExpireDate:I

    .line 240
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2
    .param p1, "Extra"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Extra:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setFullImageUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "FullImageUrl"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->FullImageUrl:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setHasCrossApp(Z)V
    .registers 2
    .param p1, "HasCrossApp"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->HasCrossApp:Z

    .line 232
    return-void
.end method

.method public setID(I)V
    .registers 2
    .param p1, "ID"    # I

    .prologue
    .line 255
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ID:I

    .line 256
    return-void
.end method

.method public setIsCheckUserCampaignPermission(Ljava/lang/String;)V
    .registers 2
    .param p1, "IsCheckUserCampaignPermission"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsCheckUserCampaignPermission:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setIsConditionPass(Z)V
    .registers 2
    .param p1, "IsConditionPass"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsConditionPass:Z

    .line 312
    return-void
.end method

.method public setIsSponsor(Z)V
    .registers 2
    .param p1, "IsSponsor"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->IsSponsor:Z

    .line 272
    return-void
.end method

.method public setLike(I)V
    .registers 2
    .param p1, "Like"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Like:I

    .line 300
    return-void
.end method

.method public setMasterCampaignId(Ljava/lang/String;)V
    .registers 2
    .param p1, "MasterCampaignId"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->MasterCampaignId:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setModifyDate(I)V
    .registers 2
    .param p1, "ModifyDate"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ModifyDate:I

    .line 220
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Name:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setNextRedeemDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "NextRedeemDate"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->NextRedeemDate:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setOriginalPrice(I)V
    .registers 2
    .param p1, "OriginalPrice"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->OriginalPrice:I

    .line 204
    return-void
.end method

.method public setOtherPointPerUnit(I)V
    .registers 2
    .param p1, "OtherPointPerUnit"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->OtherPointPerUnit:I

    .line 192
    return-void
.end method

.method public setParentCategoryId(Ljava/lang/String;)V
    .registers 2
    .param p1, "ParentCategoryId"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->ParentCategoryId:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setPointPerUnit(I)V
    .registers 2
    .param p1, "PointPerUnit"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PointPerUnit:I

    .line 284
    return-void
.end method

.method public setPointType(Ljava/lang/String;)V
    .registers 2
    .param p1, "PointType"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PointType:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setPricePerUnit(F)V
    .registers 2
    .param p1, "PricePerUnit"    # F

    .prologue
    .line 335
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->PricePerUnit:F

    .line 336
    return-void
.end method

.method public setQty(I)V
    .registers 2
    .param p1, "Qty"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Qty:I

    .line 228
    return-void
.end method

.method public setRankVote(Ljava/lang/String;)V
    .registers 2
    .param p1, "RankVote"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RankVote:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .registers 2
    .param p1, "Rating"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Rating:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setRedeemCount(Ljava/lang/String;)V
    .registers 2
    .param p1, "RedeemCount"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemCount:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setRedeemMedia(I)V
    .registers 2
    .param p1, "RedeemMedia"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemMedia:I

    .line 332
    return-void
.end method

.method public setRedeemMostPerPerson(I)V
    .registers 2
    .param p1, "RedeemMostPerPerson"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->RedeemMostPerPerson:I

    .line 216
    return-void
.end method

.method public setTracesJson(Ljava/lang/String;)V
    .registers 2
    .param p1, "TracesJson"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->TracesJson:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "Type"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Type:I

    .line 196
    return-void
.end method

.method public setUserLevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "UserLevel"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->UserLevel:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setUserVisibility(Ljava/lang/String;)V
    .registers 2
    .param p1, "UserVisibility"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->UserVisibility:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setVote(I)V
    .registers 2
    .param p1, "Vote"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Vote:I

    .line 252
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .registers 2
    .param p1, "Website"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel$CampaignsEntity;->Website:Ljava/lang/String;

    .line 296
    return-void
.end method
