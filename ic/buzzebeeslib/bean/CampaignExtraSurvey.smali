.class public Lic/buzzebeeslib/bean/CampaignExtraSurvey;
.super Ljava/lang/Object;
.source "CampaignExtraSurvey.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;",
            ">;"
        }
    .end annotation
.end field

.field public Incorrect_limit:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    .line 23
    const-string v4, "incorrect_limit"

    invoke-static {p1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->Incorrect_limit:I

    .line 25
    :try_start_12
    const-string v4, "pages"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 26
    .local v3, "jsonItems":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    .line 27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_27

    .line 34
    .end local v1    # "i":I
    .end local v3    # "jsonItems":Lorg/json/JSONArray;
    :goto_26
    return-void

    .line 28
    .restart local v1    # "i":I
    .restart local v3    # "jsonItems":Lorg/json/JSONArray;
    :cond_27
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    .local v2, "jsonItem":Lorg/json/JSONObject;
    iget-object v4, p0, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    new-instance v5, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    invoke-direct {v5, v2}, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_35} :catch_38

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 31
    .end local v1    # "i":I
    .end local v2    # "jsonItem":Lorg/json/JSONObject;
    .end local v3    # "jsonItems":Lorg/json/JSONArray;
    :catch_38
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(JSONException|CampaignExtraSurvey):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
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