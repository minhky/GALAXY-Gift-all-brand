.class public final Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareOpenGraphContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphContent;",
        "Lcom/facebook/share/model/ShareOpenGraphContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Lcom/facebook/share/model/ShareOpenGraphAction;

.field private previewPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareOpenGraphContent$Builder;)Lcom/facebook/share/model/ShareOpenGraphAction;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->action:Lcom/facebook/share/model/ShareOpenGraphAction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareOpenGraphContent$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->previewPropertyName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareOpenGraphContent;
    .registers 3

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareOpenGraphContent;-><init>(Lcom/facebook/share/model/ShareOpenGraphContent$Builder;Lcom/facebook/share/model/ShareOpenGraphContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 3

    .prologue
    .line 97
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphContent;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 97
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphContent;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
    .registers 3

    .prologue
    .line 149
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphContent;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareOpenGraphContent;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
    .registers 4

    .prologue
    .line 137
    if-nez p1, :cond_3

    .line 143
    :goto_2
    return-object p0

    .line 141
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    .line 142
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setAction(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setPreviewPropertyName(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public setAction(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
    .registers 3

    .prologue
    .line 109
    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 113
    :goto_3
    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->action:Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 114
    return-object p0

    .line 109
    :cond_6
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;-><init>()V

    .line 113
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    goto :goto_3
.end method

.method public setPreviewPropertyName(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->previewPropertyName:Ljava/lang/String;

    .line 127
    return-object p0
.end method
