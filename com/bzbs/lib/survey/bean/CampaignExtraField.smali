.class public Lcom/bzbs/lib/survey/bean/CampaignExtraField;
.super Ljava/lang/Object;
.source "CampaignExtraField.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public ArrayCampaignExtraPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;",
            ">;"
        }
    .end annotation
.end field

.field public Incorrect_limit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraField;->ArrayCampaignExtraPages:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraField;->ArrayCampaignExtraPages:Ljava/util/ArrayList;

    .line 27
    const-string/jumbo v4, "incorrect_limit"

    invoke-static {p1, v4}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraField;->Incorrect_limit:Ljava/lang/String;

    .line 29
    :try_start_13
    const-string/jumbo v4, "pages"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 30
    .local v3, "jsonItems":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraField;->ArrayCampaignExtraPages:Ljava/util/ArrayList;

    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_58

    .line 32
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    .local v2, "jsonItem":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/bzbs/lib/survey/bean/CampaignExtraField;->ArrayCampaignExtraPages:Ljava/util/ArrayList;

    new-instance v5, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;

    invoke-direct {v5, v2}, Lcom/bzbs/lib/survey/bean/CampaignExtraSurveyPage;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_36} :catch_39

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 35
    .end local v1    # "i":I
    .end local v2    # "jsonItem":Lorg/json/JSONObject;
    .end local v3    # "jsonItems":Lorg/json/JSONArray;
    :catch_39
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(JSONException):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method