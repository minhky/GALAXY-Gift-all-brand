.class final Lcom/facebook/internal/LikeStatusClient;
.super Lcom/facebook/internal/PlatformServiceClient;
.source "LikeStatusClient.java"


# instance fields
.field private objectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "objectId"    # Ljava/lang/String;

    .prologue
    .line 36
    const v2, 0x10006

    const v3, 0x10007

    .line 37
    const v4, 0x13353c9

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/PlatformServiceClient;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/facebook/internal/LikeStatusClient;->objectId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected populateRequestBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string v0, "com.facebook.platform.extra.OBJECT_ID"

    iget-object v1, p0, Lcom/facebook/internal/LikeStatusClient;->objectId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
