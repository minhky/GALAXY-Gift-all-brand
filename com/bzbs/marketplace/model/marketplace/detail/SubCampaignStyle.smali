.class public Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;
.super Ljava/lang/Object;
.source "SubCampaignStyle.java"


# static fields
.field public static final FIELD_HAS_STYLE:Ljava/lang/String; = "hasStyle"

.field public static final FIELD_MASTER_CAMPAIGN_ID:Ljava/lang/String; = "masterCampaignId"

.field public static final FIELD_STYLES:Ljava/lang/String; = "styles"


# instance fields
.field a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "styles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/detail/Style;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "masterCampaignId"
    .end annotation
.end field

.field c:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "hasStyle"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getMasterCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/detail/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->a:Ljava/util/List;

    return-object v0
.end method

.method public isHasStyle()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->c:Z

    return v0
.end method

.method public setHasStyle(Z)V
    .registers 2

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->c:Z

    .line 47
    return-void
.end method

.method public setMasterCampaignId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStyles(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/detail/Style;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->a:Ljava/util/List;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "styles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", masterCampaignId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasStyle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/SubCampaignStyle;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
